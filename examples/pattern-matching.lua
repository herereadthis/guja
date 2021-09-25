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
gsub returns 2 values: new string, and number of replacements
]]
myStr4 = "lorem ipsum sit dolor amet"
myResult4, rcount = string.gsub(myStr4, "m", "p", 2)
print(myResult4)    --> lorep ipsup sit dolor amet
print(rcount)       --> 2

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
print(table.concat(wordSequence, ", "))   --> lorem, ipsum, sit, dolor, amet


--[[
.	  all characters 	
%g	printable except spaces 	
%u	uppercase
%a	letters 
%l	lowercase 	
%w	alphanumeric
%c	control characters 	
%p	punctuation 	
%x	hexadecimal
%d	digits 	
%s	spaces 		

Capitalize to get opposite, e.g., %A represents all non-letter charcaters

Escaped Characters:

( ) . % + - * ? [ ] ^ $

use % to escape them, e.g., %? is a question mark

+  1 or more characters
*  0 or more
-  0 or more lazy repetitions
?  optional (0 or 1)

brackets for a character set


^  match at beginning of string
]]

_, vowelsCount = string.gsub(myStr4, "[AEIOUaeiou]", "")
print(_)                        --> lrm psm st dlr mt
print(vowelsCount)              --> 9


--[[
Captures: skipped (not interested)
Replacements: skipped (not interested)
]]

