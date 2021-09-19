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

