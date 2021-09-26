
-- amount of cpu time used by the program
theTime = os.clock()
print(theTime)

print("\ndate example")
print(os.date())  --> a date
dateAsTable = os.date("*t")
print(dateAsTable.year, dateAsTable.month, dateAsTable.day)
print(dateAsTable.hour, dateAsTable.min, dateAsTable.sec)

-- The titanic sunk on Sunday, 15 April, 1912, starting at 2:20AM
print(os.date("%d/%m/%y"))          --> 12/04/12
print(os.date("%Y-%m-%d"))          --> 1912-04-15
print(os.date("%H:%M:%S"))          --> 02:20:00
print(os.date("%D"))                --> 04/12/12
print(os.date("%c"))                --> Sun, Apr 14 02:20:00 1912
print(os.date("%a, %A"))            --> Sun, Sunday
print(os.date("%b, %B"))            --> Apr, April

print("\ndate manipulation example")
local current = os.date("*t")
print(os.date("%Y-%m-%d %H:%M:%S", os.time(current)))       --> 1912-04-15 02:20:00
current.year = current.year + 1
current.hour = current.hour + 3
print(os.date("%Y-%m-%d %H:%M:%S", os.time(current)))       --> 1913-04-15 05:20:00


-- get value of environment variable
print(os.getenv("HOME"))

-- run terminal
function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

function getFilePath (filename)
  return string.format("%s%s", script_path(), filename)
end

function createDir (dirname)
  os.execute("mkdir " .. dirname)
end

print(string.format("\nScript Path: %s", script_path()))    --/Users/path/to/script

newDir = getFilePath("temp")
createDir(newDir)               -- creates a temp directory

-- terminate a program
os.exit()
print("You cannot see this")