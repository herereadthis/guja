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