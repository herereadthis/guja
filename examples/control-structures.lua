
-- if
local a = 5
if (a > 3) then print("a is bigger than 3") end -- one line

if (a < 10) then
  print("a  is less than 10")
else
  print("a is greater than 10")
end

-- elseif
if (a < 10) then
  print("a is less than 10")
elseif (a < 8) then
  print("a is less than 8")
end

-- while
while (a > 0) do
  a = a - 1
  print("a = " .. a)
end

-- repeat
b = 5
repeat
  b = b - 1
  print("b = " .. b)
until b <= 0

--[[
for, numerical
for i = initialValue, finalValue, incrementValue do
]]
for i = 3, 7, 2 do
  print("i = " .. i)        -- 3, 5, 7
end
