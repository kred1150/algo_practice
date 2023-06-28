# Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.

board = [
  ["5", "3", ".", ".", "7", ".", ".", ".", "."],
  ["6", ".", ".", "1", "9", "5", ".", ".", "."],
  [".", "9", "8", ".", ".", ".", ".", "6", "."],
  ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
  ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
  ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
  [".", "6", ".", ".", ".", ".", "2", "8", "."],
  [".", ".", ".", "4", "1", "9", ".", ".", "5"],
  [".", ".", ".", ".", "8", ".", ".", "7", "9"],
]

def is_valid_sudoku(board)
  sudoku_hash = {
    0 => [],
    1 => [],
    2 => [],
    3 => [],
    4 => [],
    5 => [],
    6 => [],
    7 => [],
    8 => [],
  }
  i = 0
  while i < board.length
    row = []
    sub_i = 0
    while sub_i < board[i].length
      if board[i][sub_i] == "."
        "not filled in"
      elsif row.include?(board[i][sub_i]) == true
        return false
      elsif sudoku_hash[sub_i] && sudoku_hash[sub_i].include?(board[i][sub_i]) == true
        return false
      else
        row << board[i][sub_i]
        sudoku_hash[sub_i] << board[i][sub_i]
      end
      sub_i += 1
    end
    i += 1
  end
  return true
end

p is_valid_sudoku(board)
