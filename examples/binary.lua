--[[
Signed integers can be 2^63 - 1 as max values. That is, the binary
representation of the integer can at most have 63 ones. the 64th value is the
signal: positive or negative?
9,223,372,036,854,775,807

RUN THIS FILE IN TERMINAL. ZeroBrane can't handle it.
]]

-- puts these 3 integers into a binary string
local s = string.pack("iii", 3, -27, 450)
print(s)
print(type(s))              --> string
print(#s)
local s1, s2, s3, s4 = string.unpack("iii", s)
print(s1, s2, s3, s4)
