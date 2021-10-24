#!/usr/bin/env fish

function get_releases_pages -d "Fetch the pages for the kubernetes releases from GitHub"
  argparse 't/token=' -- $argv
  or return 1

  curl \
      -H "Accept: application/vnd.github.v3+json" \
      -u "$_flag_token" \
      -Is 'https://api.github.com/repos/kubernetes/kubernetes/releases'
end

function last_page -d "Extract the last page from the GitHub /releases API response"
  rg '^link:' \
    | string replace "link: " "" \
    | string split "," \
    | string trim \
    | rg 'rel="last"' \
    | rg 'page=(\d+)>' -o -r '$1'
end

function fetch_page -d "Fetch a single page"
  argparse 't/token=' 'p/page=' -- $argv
  or return 1

  curl \
    -H "Accept: application/vnd.github.v3+json" \
    -u "$_flag_token" \
    -s "https://api.github.com/repos/kubernetes/kubernetes/releases?page=$_flag_page&per_page=100"
end

function get_releases -d "Fetch all releases in the form of JSON objects from
  the GitHub releases API, from page 0 to the given last_page"
  argparse --ignore-unknown 'l/last_page=' -- $argv
  or return 1

  set -l data
  for page_num in (seq 0 $_flag_l)
    set -p data (fetch_page $argv -p $page_num |\
      jq 'map(select((.prerelease == false) and (.draft == false)))
          | map({tag_name,tarball_url})
          | .[]')
  end

  jq -s '. ' < (echo $data | psub)
end

function get_hash -d "Fetch a single hash and add it to the input object"
  read -l object
  set -l key (echo $object | jq -r '.tag_name')
  set -l url (echo $object | jq -r '.tarball_url')
  set -l file (mktemp)
  set -l err_file (mktemp --tmpdir (printf "%s_error_XXXXXXX" $key))
  curl --stderr $err_file --fail-with-body -SsLo $file $url || return 1
  if not test -s $err_file
    rm $err_file
  end
  set -l hash (nix-hash --type sha256 --base32 --flat $file) || return 1
  rm $file

  echo $object | jq -c '.hash = $hash' --arg hash $hash
  # Outputs the following object but on a single line
  # {
  #   "tag_name": "v1.17.6",
  #   "tarball_url": "https://api.github.com/repos/kubernetes/kubernetes/tarball/v1.17.6",
  #   "hash": "whatever Nix returned"
  # }
end

function process_releases -d "Process a JSON array where each object has
  'tag_name' and 'tarball_url' by getting a Nix hash for the tarball. The hash
  is added under the 'hash' key to each object."
  jq -c '.[]' | rg 'v1' | parallel --joblog $XDG_CACHE_HOME/kubectl_nix_joblog -j30 'source ./scripts/lib.fish; echo {} | get_hash' | jq -s '.'
  # [
  #   {
  #     "tag_name": "v1.17.7",
  #     "tarball_url": "https://api.github.com/repos/kubernetes/kubernetes/tarball/v1.17.7",
  #     "hash": "foo"
  #   }
  # ]
end

function run
  set -l last_page (get_releases_pages $argv | last_page)
  get_releases -l $last_page $argv | process_releases | jq 'reduce .[] as $i ({}; .[$i.tag_name] = $i)'
end
