#!/usr/bin/env fish

argparse 'd/debug' 't/token=' -- $argv
or exit 1

set -x should_log "$_flag_debug"
set -x user_and_token "$_flag_token"

function log
  if test -n "$should_log"
    echo "[get_releases] $argv"
  end
end

function get_page_list
  if test -n "$user_and_token"
    curl \
        -H "Accept: application/vnd.github.v3+json" \
        -u "$user_and_token" \
        -Is 'https://api.github.com/repos/kubernetes/kubernetes/releases'
  else
    curl \
        -H "Accept: application/vnd.github.v3+json" \
        -Is 'https://api.github.com/repos/kubernetes/kubernetes/releases'
  end
end

function get_page -a page_num
  if test -n "$user_and_token"
    curl \
        -H "Accept: application/vnd.github.v3+json" \
        -u "$user_and_token" \
        -s "https://api.github.com/repos/kubernetes/kubernetes/releases?page=$page_num"
  else
    curl \
        -H "Accept: application/vnd.github.v3+json" \
        -s "https://api.github.com/repos/kubernetes/kubernetes/releases?page=$page_num"
  end
end

# Make a HEAD request to get the link header, which includes a list of URL and
# "rel" pairs, such as:
# <https://api.github.com/repositories/20580498/releases?per_page=100&page=5>
# rel="last"
# We then find the pair that has rel="last", and extract the page=5, specifically the number, which gives us the last page.
set -l links (get_page_list \
      | rg '^link:' \
      | string replace "link: " "" \
      | string split ",")

log "find last page from links header"
set -l last_page
for link in $links
  set -l pair (echo $link | string split ";")
  set -l rel (string trim $pair[2])
  log "checking link header pair: $pair"
  log "checking rel= '$rel'"
  if test $rel = 'rel="last"'
    set last_page (echo $pair[1] | rg 'page=(\d+)>' -o -r '$1')
  end
end

if test -z $last_page
  log "Couldn't find last page from API request."
  log "These are the links I tried to parse: $links"
  log "Maybe you've hit the rate limit? Try using GITHUB_TOKEN."
  log "I'll try making the request again but give you the raw response:"
  get_page_list
  exit 1
else
  log "found last page: $last_page"
end

set -l releases
for page_num in (seq 1 $last_page)
  log "requesting page: $page_num"
  set -p releases (get_page $page_num \
          | jq -r 'map(select((.prerelease == false) and (.draft == false))) | map(.tag_name) | sort| .[]')
end

log "found the following releases"
printf '%s\n' $releases

# vim: filetype=fish
