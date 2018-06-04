WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8]
  [0, 3, 6], [1, 4, 7], [2, 5, 8]
  [0, 4, 8], [2, 4, 6]
]

def display_board(board)
  rows = (0..8).step(3).collect{|i| (i..i+2).collect{|j|" #{board[i]}} "}}.join("|")
  div = "\n" +  "-"*11 + "\n"
  row.join(div)
end
