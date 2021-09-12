--[[
The eight-queen puzzle is chess problem where the goal is to place eight queens
on a chessboard such that no queen can attack another.

Hence or otherwise: each row must contain only one queen, each column must
contain one queen, and no queens can share a diagonal.

The solution can be presented as an array of 8 numbers, where each array element
index is the the row number, and the value is the column number. For example:
{5, 2, 4, 6, 8, 1, 7, 3} (this is not a viable solution)
]]

-- board size
rowCount = 8
columnCount = 8

-- check whether position (row, column) is free from attacks
function isplaceok (answer, row, column)
  for i = 1, row - 1 do -- for each queen already placed
    if (answer[i] == column) or -- same column?
       (answer[i] - i == column - row) or -- same diagonal?
       (answer[i] + i == column + row) then -- same diagonal?
      return false -- not safe              
    end
  end
  return true -- safe
end

-- print a board
function printsolution (answer)
  for row = 1, rowCount do
    for column = 1, columnCount do
      io.write(answer[row] == column and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

-- add to board 'answer' all queens from 'n' to 'N'
function addqueen (answer, row)
  if row > rowCount then
    print(table.concat(answer, ", "))
    printsolution(answer)
  else
    for column = 1, columnCount do
      if isplaceok(answer, row, column) then
        answer[row] = column
        addqueen(answer, row + 1)
      end
    end
  end
end

addqueen({}, 1)

       