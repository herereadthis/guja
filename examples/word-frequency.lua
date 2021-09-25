

--[[
1. iterate over all lines in text, then
2. for each line, iterate over each word
3. let the word be the key in the table, whose value gets incremented by 1 for 
   every occurance.
]]
local counter = {}
for line in io.lines() do
  for word in string.gmatch(line, "%w+") do -- %w is alphanumeric characters
    counter[word] = (counter[word] or 0) + 1
  end
end

--[[
1. create a list of words by grabbing all keys from counter table and putting 
   them into a new sequence
]]
local words = {}
for word, count in pairs(counter) do
  words[#words + 1] = word
end

table.sort(
  words, function (w1, w2)
    return counter[w1] > counter[w2] or counter[w1] == counter[w2] and w1 < w2
  end
)

local n = math.min(tonumber(arg[1]) or math.huge, #words)

for i = 1, n do
  io.write(words[i], "\t", counter[words[i]], "\n")
end




