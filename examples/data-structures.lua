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

* Singly: Each node only has 1 pointer, to the next node.
* Doubly: Each node has 2 pointers: to the next node and the previous node. If
  it is the head node, then its previous pointer is null
* Circular: can either be Singly or Doubly, but the last node points to either
  the head node, or any other previouly linked node.
  
Advantages of a linked list
* It grows or shrinks in memory as needed. No need to allocate correct memory 
  prior to creating it.
* Nodes can be inserted or removed from anwwhere without having to reorganize
  the entire data structure.
  
Disadvantages
* Nodes must be traversed sequentially, so searching is slow.
* It takes up more memory because some has to be set aside for the pointers.
  
In Lua, each node is a table.
]]

local sequence1 = {12, "hi", "89", "foo"}

local list = nil
for k, v in pairs(sequence1) do
  list = {next = list, value = v}
end

print("\nLinked list demo")
print(list.value)                   --> foo
print(list.next.value)              --> 89
print(list.next.next.value)         --> hi
print(list.next.next.next.value)    --> 12


-- queues (skipped?)

-- Reverse or index tables are like fooToBarMaps in javascript
-- use these instead of searching


    
