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



  