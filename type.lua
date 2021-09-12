print(type(nil))            --> nil
print(type(true))           --> boolean
print(type(10.4 * 3))       --> number
print(type("hello World"))  --> string
print(type(io.stdin))       --> userdata (allows arbitrary C data to stored in Lua variables)
print(type(print))          --> function
print(type(type))           --> function
print(type({}))             --> table (associative array, or otherwise just arrays)
print(type(type(X)))        --> string (result of type is always a string)
print(type(a))              --> nil
a = 10
print(type(a))              --> number