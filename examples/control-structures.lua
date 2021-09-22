-- do for blocks
do
  print("hello this is a block")
end

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

print("\nrepeat  demo")
b = 5
repeat
  b = b - 1
  print("b = " .. b)
until b <= 0

--[[
for, numerical
for i = initialValue, finalValue, incrementValue do
]]
print("\nfor")
for i = 3, 7, 2 do
  print("i = " .. i)        -- 3, 5, 7
end

seq1 = {"a", "b", "c", "d"}
for i = 1, #seq1 do
  io.write(seq1[i])         --> abcd
end
print("\n")

-- for, generic
for a, b in pairs(seq1) do
  io.write(a .. "=" .. b)   --> 1=a2=b3=cd=4
end
print("\n")

print("\nbreak demo")
for i = 1, #seq1 do
  if (seq1[i] ~= "c") then
    io.write(seq1[i])         --> ab
  else
    break
  end
end
print("\n")

--[[
goto
* create a label with double colons, like ::example_label::
* Cannot jump into a block
* cannot jump out of a function
* cannot jump into the scope of a local variable
]]

print("\n goto state machine demo, only l and r can be valid moves. q to quit")
::room1::
do
  local m = io.read()
  if m == "r" then
    print("going to room 2")
    goto room2
  elseif m == "q" then
    print("quitting")
    goto end_state_machine
  else
    print("invalid move. try again,")
    goto room1
  end  
end

::room2::
do
  local m = io.read()
  if m == "l" then
    print("going to room 1")
    goto room2
  elseif m == "q" then
    print("quitting")
    goto end_state_machine
  else
    print("invalid move. try again.")
    goto room2
  end  
end

::end_state_machine::
print("end")
