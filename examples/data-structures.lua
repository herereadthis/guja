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

-- first type of matrix: table of N Tables, each with M entries. All entries = 0
-- O(n^2) complexity
function makeMatrixA (N, M)
  local mt1 = {}
  for i = 1, N do
    local row = {}
    for j = 1, M do
      row[j] = 0
    end
    mt1[i] = row
  end
end

--[[
second type of matrix, N rows, each with M entries. However, there is only 1
table, with N * M indices, such that mt[1] to mt[N] represents first row, 
mt[N * (M - 1)] to mt[N * M] represents last row

The advantage of this kind of matrix is that it can represent a sparse matrix
better. That is, a matrix where only some of the values are not zero.
]]
function makeMatrixB (N, M)
  local mt1 = {}
  for i = 1, N do
    local rowIncrement = (i - 1) * M
    for j = 1, M do
      mt[i + rowIncrement] = 0
    end
  end
end

--[[
Linked List

A linked list has nodes.
Each node has data, and a pointer to the next node.
If the node is the last in the list, then its pointer is null.

There are 3 main types of linked lists:

-Singly: Each node only has 1 pointer, to the next node.
]]


  
    
