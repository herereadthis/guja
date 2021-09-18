print("hello world")
print "hello world" -- no parenthesis needed if just one param

--[[
Functions in Lua can return multiple parts
]]

print("\nMultiple results demo")
strStart, strEnd = string.find("lorem ipsum sit dolor amet", "ipsum")
print(strStart)         --> 7
print(strEnd)           --> 11

function getMaxAndIndex (sequence)
  local maxIndex = 1
  local max = sequence[maxIndex]
  for i = 1, #sequence do
    if sequence[i] > max then
      maxIndex = i
      max = sequence[i]
    end
  end
  return max, maxIndex
end

seq1 = {4, 7, 2, 19, 4, 13}
max, maxIndex = getMaxAndIndex(seq1)
print(max)              --> 19
print(maxIndex)         --> 4

function foo3 ()
  return "a", "b", "c"
end
print(foo3())                     --> a  b  c
seq2 = {foo3()}
print(table.concat(seq2, ", "))   --> a, b, c


--[[
A fucntion is variadic if it can take a variable number of arguments
]]
print("\nVariadic Functions")

function getSum (...)
  local sum = 0
  for key, value in ipairs{...} do
    sum = sum + value
  end
  return sum
end

print(getSum(34, 28, 72, 5, 34))    --> 173

function fooVariadic1 (a, ...)
  local b, c, d = ...
  print(string.format("a = %s", a))
  print(string.format("b = %s", b))
  print(string.format("c = %s", c))
  print(string.format("d = %s", d))
end

print(fooVariadic1("foo", "bar", "baz")) --> a = foo, b = bar, c = baz, d = nil

seq4 = {"a", "b", "c", "d"}
print("\nselect()")
print(select(1, "a", "b", "c", "d"))      --> a  b  c  d
print(select(2, "a", "b", "c", "d"))      --> b  c  d
-- get the size of the number of args
print(select("#", "a", "b", "c", "d"))    --> 4

function addVariadic (...)
  local sum = 0
  for i = 1, select("#", ...) do
    sum = sum + select(i, ...) -- will only grab 1st return
  end
  return sum
end

print(addVariadic(3, 6, 9, 12))           --> 30

print("\ntable.unpack examples")
-- use unpack to use the elements of a list as args in a function
seq5 = {2, 3, 5, 7, 11}
a, b, c = table.unpack(seq5)
print(b, c)                               --> 3  5
print(addVariadic(table.unpack(seq5)))    --> 28

print("\nTail calls") 
--[[
functions that call a function at the end. a goto
a key thing is there is nothing else to do
]]
function functionB (n)
  if n > 0 then 
    print(n)
    return functionB(n - 1) -- returning a function makes it a tail call
  end
end

functionB(4) --> 4 3 2 1





  