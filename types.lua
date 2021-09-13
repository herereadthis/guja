print(type(nil))            --> nil
print(type(true))           --> boolean
print(type(10.4 * 3))       --> number
print(type("hello World"))  --> string
print(type(io.stdin))       --> userdata (allows arbitrary C data to stored in Lua variables)
print(type(print))          --> function
print(type(type))           --> function
print(type({}))             --> table (associative array, or otherwise just arrays)
print(type(type(X)))        --> string (result of type is always a string)
print(type(a))              --> nil
a = 10
print(type(a))              --> number

--[[
In Lua, numbers can be integers or double-precision floating point numbers. 
Specify a float by adding a decimal.
Both integers and floats are number types
]]

-- long strings and multiline strings
template = [[
<html>
<head>
  <title>Hello World</title>
</head>
<body>
  <h1>Hello World</h1>
</body>
</html>
]]
