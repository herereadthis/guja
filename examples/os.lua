
-- amount of cpu time used by the program
theTime = os.clock()
print(theTime)

print("\ndate example")
print(os.date())  --> a date
dateAsTable = os.date("*t")
print(dateAsTable.year, dateAsTable.month, dateAsTable.day)
print(dateAsTable.hour, dateAsTable.min, dateAsTable.sec)


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

newDir = getFilePath("temp")
createDir(newDir)               -- creates a temp directory

-- terminate a program
os.exit()
print("You cannot see this")