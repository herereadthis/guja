
-- run a file
function dofile (filename)
  -- use assert to raise an error if loadfile fails
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

-- run a file
dofile(anyoneFile)

-- load is like loadfile, except it reads its chunk from a string or from a
-- function, instead of a file.
print("\nLoad example")
local loadExample = load("myVar = 1 + 1")
local functionExample = (i) i = i + 1 end -- the same as above, but cheaper
myVar = 0 -- cannot be local!
loadExample(); print(myVar)
loadExample(); print(myVar)

load(myVar)()