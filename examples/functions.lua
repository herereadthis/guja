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

--[[
Functions are first class values
]]

print("\nFunctions: first class values")
local my_var = {foo = print}
my_var.foo("hello world")       --> hello world

-- writing a function this way...
function bar (x)
  return 2 * x
end

-- ...is the same as writing it this way.
local baz = function (x)
  return 2 * x
end

--[[
recursive local functions can be buggy if local variable has not been defined at
the point when the function is called. Instead, create the variable first.
]]
local factorial
factorial = function (n)
  if n == 0 then return 1
  else return n * factorial(n - 1)
  end
end

--[[
Lexical scoping, closure
]]

newCounter = function ()
  local count = 0
  return function ()
    -- this anonymous function has access to the count variable
    count = count + 1
    return count
  end
end

print("\nFunctions: lexical scoping")
count1 = newCounter()
print(count1())             --> 1
print(count1())             --> 2
count2 = newCounter()
print(count2())             --> 1 -- has access to a new local variable count
print(count1())             --> 3


print("\nClosures for sandboxes: Redefine predefined functions")
-- this example creates a sandbox to try io.open() in safe manner
do
  local oldOpen = io.open
  local getCanAccess = function (filename, mode)
    -- check access
  end
  
  io.open = function (filename, mode)
    if getCanAccess(filename, mode) then
      return oldOpen(filename, mode)
    else
      return nil, "access Denided"
    end
  end
end


--[[
Functional Programming
]]
function disk (cx, cy, r)         
  return function (x, y)                  
    return (x - cx)^2 + (y - cy)^2 <= r^2                
  end       
end

function difference (r1, r2)         
  return function (x, y)                  
    return r1(x, y) and not r2(x, y)                
  end       
end

function translate (r, dx, dy)         
  return function (x, y)                  
    return r(x - dx, y - dy)                
  end       
end


function plot (r, M, N)         
  io.write("P1\n", M, " ", N, "\n")     -- header         
  for i = 1, N do                -- for each line           
    local y = (N - i*2)/N           
    for j = 1, M do            -- for each column             
      local x = (j*2 - M)/M             
      io.write(r(x, y) and "1" or "0")           
    end           
    io.write("\n")         
  end       
end

c1 = disk(0, 0, 1)       
plot(difference(c1, translate(c1, 0.5, 0)), 64, 64)








  