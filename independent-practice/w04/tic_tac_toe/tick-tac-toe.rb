require_relative "player"
require_relative "board"

@game_board = GameBoard.new()

print "Player 1 enter your name: "
p1_name_input = gets.chomp.capitalize
player1 = Player.new(p1_name_input)

print "Player 2 enter your name: "
p2_name_input = gets.chomp.capitalize
player2 = Player.new(p2_name_input)

@game_board.print_board()

def player_turn(player)
  print "#{player.name}'s turn: "
  input = gets.chomp.to_i

  while (@game_board.board[input - 1] == "X") || (@game_board.board[input - 1] == "O") || (input > 9) || (input < 1)
    print "Invalid selection #{player.name}, try again: "
    input = gets.chomp.to_i
  end

  @game_board.board[input - 1] = "X"
  @game_board.print_board()
  @game_board.winner_check(player.name)
end

while @game_board.winner_status == false
  if player1.turn == true
    player_turn(player1)

    player1.turn = false
    player2.turn = true
  elsif player2.turn == true
    player_turn(player1)

    player1.turn = true
    player2.turn = false
  end
end
