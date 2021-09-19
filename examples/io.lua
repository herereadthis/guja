--[[
The I/O Library has 2 models for file manipulation

The simple I/O model assumes a current input stream and a current output stream

standard input = stdin
standard output = stdout

print() always uses standard output. May include tabs and spaces
io.write() can redirect output. Does not include unspecified tabs and spaces
]]

io.write("sin(3) = ", math.sin(3), "\n")      --> sin(3) = 0.14112000805987

--[[
io.read

"a" - reads the whole file
"l" - reads the next line (drop the newline)
"L" - reads the next line (keep the newline)
"n" - reads a number
num - reads num characters as a string
]]

--[[
foo = io.read("*l")
print(foo)
]]

--[[
io.open()
"r" - read-only mode (default)
"w" - write mode
"a" - append mode
"r+" - update mode, all previous data is preserved
"w+" - update mode, all previous data is erased
"a+" -  append update mode, previous data is preserved
]]

function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

function getFilePath (filename)
  return string.format("%s%s", script_path(), filename)
end

filePath1 = getFilePath("anyone.txt")
print(filePath1)
  
--[[
Below: reading from a file
example functions:

io.lines()
io.open()
]]

-- see if the file exists
function getDoesFileExist (filepath)
  local f = io.open(filepath, "r")
  if f then 
    f:close() 
  end
  return f ~= nil -- true if file exists
end

-- puts lines in a file into a table, indexed by line number
function getLinesFromFile(filepath)
  local lines = {}
  
  if getDoesFileExist(filepath) then 
    for line in io.lines(filepath) do 
      lines[#lines + 1] = line
    end
  end
  
  return lines
end

local lines = getLinesFromFile(filePath1)

for k,v in pairs(lines) do
  print('line[' .. k .. ']', v)
end

--  simple model
io.write("hello world")
-- complete model
io.output():write("hello world", "\n")
