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

-- all valid
local m = require "math"
local m2 = require "math".sin
print(m.sin(0.5))
print(m2(0.6))