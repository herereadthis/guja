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
b = {}
b["x"] = 10
print(b["x"])                 --> 11
c = b
c["x"] = 11
print(b["x"])                 --> 11

-- tables will grow as needed
d = {}
for index = 0, 1000 do
  d[index] = index + 0.123
end
print(d[0])                   --> 0.123
print(d[500])                 --> 500.123
print(d[1001])                --> nil


-- initialize a list
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[0])                --> nil -- NOT ZERO INDEX
print(days[4])                --> Wednesday

-- initialize a record
myRecord = {x = 10, y = 20}
myRecord.z = 30
print(myRecord.x)             --> 10
print(myRecord.z)             --> 30
