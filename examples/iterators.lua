
local values = function (t)
  local i = 0
  return function ()
    i = i + 1;
    return t[i]
  end
end

t = {10, 20, 30}

local iterationDemo1 = function (seq)
  iter = values(seq)            -- create the iterator
  while true do
    local element = iter()      -- call the iterator
    if element == nil then
      break
    end
    print(element)
  end
end


local iterationDemo2 = function (seq)
  for element in values(seq) do
    print(element)
  end
end

iterationDemo1(t)
iterationDemo2(t)
