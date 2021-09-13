stringA = "Lorem Ipsum"
print(stringA)      --> Lorem Ipsum


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
print(string.len(stringA))          --> 11
-- repeat
print(string.rep("foo", 3))         --> foofoofoo
-- reverse
print(string.reverse(stringA))      --> muspI meroL
-- lowercase
print(string.lower(stringA))        --> lorem ipsum
-- uppercase
print(string.upper(stringA))        --> LOREM IPSUM
-- substring
print(string.sub(stringA, 3, 8))    --> rem Ip
print(string.sub(stringA, 3, -2))   --> rem Ipsu
-- formatting - directives:
-- %d = decimal, %x = hexadecimal, %f = float, %s = string, %i = integer
first = "John"
last = "Smith"
print(string.format("%s, %s", last, first))     --> Smith, John
-- with padding
d = 1; m = 1; y = 1970
print(string.format("%02d/%02d/%04d", d, m, y)) --> 01/01/1970
-- find
print(string.find(stringA, "rem"))              --> 3 5 (start and end of substring)
-- global substitution
print(string.gsub(stringA, "Lorem", "Foo"))     --> Foo Ipsum 1


