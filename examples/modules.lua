--[[
A module is some code that can be loaded via the function require, which will
return a table.

That table defines everything the module exports. Call table indices to do or
get stuff.

All standard libraries are modules. In the background, this is happening via
preloading:
math = require "math"
string = require "string"

but you can do this
m = require "math"

In Lua, modules are first class values. They can be stored in variables and/or
passed as arguments to functions.

The following is all valid
local m = require "myModule"
m.foo()
local mfoo = m.foo()
mfoo()
local mf = require "myModule".foo
mf()
]]


function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

print(script_path())
print(os.getenv("LUA_PATH"))
LUA_PATH = os.getenv("LUA_PATH") .. ';' .. script_path() .. '?.lua'
print(os.getenv("LUA_PATH"))

local moduleDemo = require "module-demo"


print(os.getenv("LUA_PATH"))

-- all valid
local m = require "math"
local m2 = require "math".sin
print(m.sin(0.5))
print(m2(0.6))


--[[
Lua runs on ANSI C platform which does not have the concept of directories. It
finds modules based on a list of patterns. For example:

?;?.lua;/users/herereadthis/lua/?.lua 

local myModule = require "myModule" -- will match:
myModule
myModule.lua
/users/herereadthis/lua/myModule.lua

path is determined by global variable LUA_PATH
]]


