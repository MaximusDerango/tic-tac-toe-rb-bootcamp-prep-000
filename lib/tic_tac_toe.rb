WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]
]

def display_board(board)
  rows = (0..8).step(3).collect{|i| (i..i+2).collect{|j|" #{board[j]} "}.join("|")}
  div = "\n" +  "-"*11 + "\n"
  puts rows.join(div)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token)
  board[index] = token
end

def position_taken?(board, index)
  ["X", "O"].include?(board[index])
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def turn(board)
  valid_go = false
  until valid_go do
    puts "Please enter a number between 1 and 9:"
    input = gets.strip()
    pos = input_to_index(input)
    if valid_move?(board, pos)
      valid_go = true
      move(board, pos, "X")
      display_board(board)
    end
  end
end

def turn_count(board)
  board.count{|x| x == "X" || x == "O"}
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def won?(board)
  WIN_COMBINATIONS.collect{|l|
    l.collect{|x| board[x]}.uniq
end