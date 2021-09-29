--[[
tables are the the main data structure in Lua.
use tables to represent arrays, sets, records, etc.
A table is essentially an associative array.
Tables are objects
Lists are 1-index. NOT ZERO INDEX
]]


function printTable (myTable)
  print("[")
  for key, value in pairs(myTable) do
     print(string.format("  %s: %s,", key, value)) 
  end
  print("]")
end

a = {} -- create a table (table constructor)
k = "x"
a[k] = 10
print(a["x"])               --> 10
print(a.x)                  --> 10
a[20] = "great"
print(a[20])                --> great
printTable(a)

-- tables are anonymous
print("\nanonymous demo")
b = {}
b["x"] = 10
print(b["x"])                 --> 10
c = b
c["x"] = 11
print(b["x"])                 --> 11
print(#b)                     --> 0

-- tables will grow as needed
d = {}
for index = 0, 1000 do
  d[index] = index + 0.123
end
print(d[0])                   --> 0.123
print(d[500])                 --> 500.123
print(d[1001])                --> nil
print(#d)                     --> 1000

print("\nList Example")
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[0])                --> nil -- NOT ZERO INDEX
print(days[4])                --> Wednesday

print("\nRecord Example")
myRecord = {x = 10, y = 20}
myRecord.z = 30
print(myRecord.x)             --> 10
print(myRecord.z)             --> 30
print(#myRecord)              --> 0

print("\ntable traversal")

--Traversal
--pairs makes no guarentee things are returned in order. Only that they return once per thing
table1 = {10, print, x = 12, k = "hi"}

print("\npairs demo")
for k, v in pairs(table1) do
  print(k, v)                             --> 1  10 | 2  function | k  hi | x  12
end

print("\nipairs demo: indexed values")
for k, v in ipairs(table1) do
  print(k, v)                             --> 1  10 | 2  function
end


function tableTraversePrint (t)
  for k, v in pairs(t) do
    print(k, v)
  end
end

myTable = {10, "foo", x = 10, y = 20}
tableTraversePrint(myTable)   --> 1 10, 2 foo, y 20, x 10

-- Safe navigation, aka lodash _.getIn()
print("\nSafe navigation")
myNestedTable = {
  foo = 123,
  bar = {
    x = 234,
    baz = {
      red = 5
    }
  }
}
print(myNestedTable.foo)      --> 123
E = {}
print((((myNestedTable or E).bar or E).baz or E).red)    --> 5
print((((myNestedTable or E).bar or E).baz or E).blue)   --> nil

print("\ntable insert")
t = {5, 15, 20}
table.insert(t, 2, 10)
print(table.concat(t, ", "))        --> 5, 10, 15, 20
table.insert(t, 25) -- if only 2 args added, then insert behaves like push
print(table.concat(t, ", "))        --> 5, 10, 15, 20, 25

print("\ntable remove")
r = {5, 10, 15, 17, 20, 25}
table.remove(r, 4)
print(table.concat(r, ", "))        --> 5, 10, 15, 20, 25
table.remove(r) -- if only 1 arg, then remove behaves like pop
print(table.concat(r, ", "))        --> 5, 10, 15, 20

print("\ntable.pack examples")
seq5 = table.pack("p", "q", "r", "s")
print(table.concat(seq5, ", "))           --> p, q, r, s

print("\ntable.unpack examples")
seq6 = {"l", "m", "n", "o"}
a, b, c, d = table.unpack(seq6)
print(a, b, c, d)                         --> l  m  n  o




