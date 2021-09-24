print("\nstring.find, string.sub demo")
local myString = "hello world"
--[[
returns position of first and last characters of substring, nil otherwise
string.find(myString, "subString", indexToStart, isPlainSearch)
isPlainSearch is a boolean, needed if substring itself has meaning in patterns
]]
i, j = string.find(myString, "hello")
print(i .. ", " .. j)               --> 1, 5
print(string.sub(myString, i, j))   --> hello

local myStr2 = "a [word] here"
i, j = string.find(myStr2, "]", 1, true)
print(i .. ", " .. j)               --> 8, 8

print("\nstring.match demo")
local myStr3 = "Today's date is 23/09/2021 and it is sunnny."
local dateSubStr = string.match(myStr3, "%d+/%d+/%d+")
print(dateSubStr)                   --> 23/09/2021


print("\nstring.gsub demo")
--[[
string.gsub(myString, pattern, replacement)
optional 4th variable is number substitutions
]]
local myStr4 = "lorem ipsum sit dolor amet"
print(string.gsub(myStr4, "m", "p", 2))   --> lorep ipsup sit dolor amet

print("\nstring.gmatch demo")
--[[
iterates over all matches
]]

-- take all words from a string and puts them into a sequence
makeWordSequence = function (str)
  local words = {}
  for word in string.gmatch(str, "%a+") do
    words[#words + 1] = word
  end
  return words
end

local wordSequence = makeWordSequence(myStr4)
print(table.concat(wordSequence, ", "))


