print(math.pi)                --> pi
print(math.sin(math.pi / 2))  --> All trig functions work on radians
print(math.huge)              --> infinity

-- Random number generator
print(math.random())          --> decimal, uniform distribution where 0 <= x <= 1
print(math.random(6))         --> integer, uniform distribution between 1 and specified number
print(math.random(5, 10))     --> integer, uniform distrubition between 5 and 10

-- Rounding
print(math.floor(3.3))        --> 3 (round down)
print(math.ceil(3.3))         --> 4 (round up)
print(math.modf(3.3))         --> 3 (towards zero)
print(math.modf(-3.3))        --> -3 (towards zero)

print(math.huge)              --> inf

-- convert float to integer
math.tointeger(2^30)