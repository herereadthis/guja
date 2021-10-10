-- See this package in use at [modules.lua](+../modules.lua)

local M = {}

M.hello = function ()
    print("Hello World!")
end

local lorem = function ()
  print("Lorem ipsum sit dolor amet")
end

M.lorem = lorem

-- As a matter of preference, don't do this
-- return M

-- Instead, do this
package.loaded[...] = M

--[[
Also acceptable:
return {
  hello = hello
  lorem = lorem
}
]]