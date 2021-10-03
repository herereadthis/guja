
function dofile (filename)
  local f = assert(loadfile(filename))
  return f()
end

function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

function getFilePath (filename)
  return string.format("%s%s", script_path(), filename)
end

anyoneFile = getFilePath("hello-world.lua")

print(anyoneFile)

// run a file
dofile(anyoneFile)