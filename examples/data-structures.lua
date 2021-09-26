--[[
In Lua, tables are the data structure.
All structures (e.g. arrays, records, lists, queues, sets) can be represented 
with tables.
]]

--[[
In Lua, arrays are tables that are indexed with integers.
Arrays do not a fixed size. They grow as needed.
The starting index of an array can be any integer: positive/negative/zero.
The customary practice is to start at 1.
]]

-- initialize arrays in a single expression
local squares = {1, 4, 9, 16, 26, 36, 49, 64, 81, 100}
-- length
print(#squares)             --> 10
print(type(squares))        --> table