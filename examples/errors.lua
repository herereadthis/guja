print("Example 1: enter a number:")      
n = io.read("*n")    
if not n then error("invalid input (example 1)") end

print("Example with assert: enter a number:") 
-- assert checks whether the first argument is not false.
-- if it is false, return the second argument
n = assert(io.read("*n"), "invalid input (example 2)")

--[[
Protected Call
use pcall function to handle errors inside Lua code
]]
print("\npcall example")
blowUpFunction = function (n)
  print(5)
  return n / nil
end

local status, errorMsg = pcall(blowUpFunction, 5)

print(status)               --> false
print(errorMsg)             --> attempt to perform arithmetic on a nil value

print("\nerror messages")
-- 2nd arg is level of error
-- specify level 2 to blame the thing that called the function
local typeCheckDemo = function (str)
  if type(str) ~= "string" then
    error("it is not a string", 2)
  end
end

typeCheckDemo(3)

    