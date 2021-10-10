local M = {}

local baz = function ()
  print("Red Rum")
end

M.baz = baz

-- As a matter of preference, don't do this
-- return M

-- Instead, do this
package.loaded[...] = M