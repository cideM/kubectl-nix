function parse(s)
  local versions = {}
  for d in string.gmatch(s,"%d+") do; table.insert(versions, tonumber(d)); end
  return versions[1], versions[2] or 0, versions[3] or 0
end

function semver_compare(a, b)
  local major,minor,patch = parse(a)
  local majorb,minorb,patchb = parse(b)

  if major > majorb then return true end
  if major < majorb then return false end
  if minor > minorb then return true end
  if minor < minorb then return false end
  return patch > patchb
end

LINES = {}
for line in io.lines() do; table.insert(LINES, line); end
table.sort(LINES, semver_compare)
for _, line in ipairs(LINES) do; print(line); end
