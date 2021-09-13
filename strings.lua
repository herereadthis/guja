stringA = "lorem ipsum"
print(stringA)      --> lorem ipsum

--To modify characters in a string, create a new string
stringB = string.gsub(stringA, "lorem", "foo")
print(stringB)      --> foo ipsum

--length is #
print(#stringA)     --> 11

-- concatenation is ..
stringC = "foo" .. "bar"
print(stringC)      --> foobar

--[[
strings are immutable
stringC .. "baz" -  -> compilation error
]]

-- Coercion
-- numbers can be converted to strings
print(10 .. 20)     -->1020

-- convert strings to number
stringD = "10"
print(type(stringD))            --> string
print(type(tonumber(stringD)))  --> number

--[[
String Library
]]

-- length
print(string.len(stringA))      --> 11