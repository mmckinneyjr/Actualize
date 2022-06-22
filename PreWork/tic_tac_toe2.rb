class Player
  attr_accessor :name, :turn

  def initialize(name)
    @name = name
    @turn = true
  end
end

class GameBoard
  attr_accessor :board, :winner_status

  def initialize()
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winner_status = false
  end

  def print_board()
    system "clear"
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "---|---|---"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "---|---|---"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
    puts
  end

  def winner_check(winner_name)
    ### Player 1 wins
    if @board[0] == "X" && @board[1] == "X" && @board[2] == "X" ||
       @board[3] == "X" && @board[4] == "X" && @board[5] == "X" ||
       @board[6] == "X" && @board[7] == "X" && @board[8] == "X" ||
       @board[0] == "X" && @board[3] == "X" && @board[6] == "X" ||
       @board[1] == "X" && @board[4] == "X" && @board[7] == "X" ||
       @board[2] == "X" && @board[5] == "X" && @board[8] == "X" ||
       @board[0] == "X" && @board[4] == "X" && @board[8] == "X" ||
       @board[6] == "X" && @board[4] == "X" && @board[2] == "X"
      puts "#{winner_name} Wins!!!"
      @winner_status = true
    end

    ### Player 2 wins
    if @board[0] == "O" && @board[1] == "O" && @board[2] == "O" ||
       @board[3] == "O" && @board[4] == "O" && @board[5] == "O" ||
       @board[6] == "O" && @board[7] == "O" && @board[8] == "O" ||
       @board[0] == "O" && @board[3] == "O" && @board[6] == "O" ||
       @board[1] == "O" && @board[4] == "O" && @board[7] == "O" ||
       @board[2] == "O" && @board[5] == "O" && @board[8] == "O" ||
       @board[0] == "O" && @board[4] == "O" && @board[8] == "O" ||
       @board[6] == "O" && @board[4] == "O" && @board[2] == "O"
      puts "#{winner_name} Wins!!!"
      @winner_status = true
    end
    ### It's a tie
    if (@board[0] == "X" || @board[0]) == "O" &&
       (@board[1] == "X" || @board[1]) == "O" &&
       (@board[2] == "X" || @board[2]) == "O" &&
       (@board[3] == "X" || @board[3]) == "O" &&
       (@board[4] == "X" || @board[4]) == "O" &&
       (@board[5] == "X" || @board[5]) == "O" &&
       (@board[6] == "X" || @board[6]) == "O" &&
       (@board[7] == "X" || @board[7]) == "O" &&
       (@board[8] == "X" || @board[8]) == "O"
      puts "It's a tie: That is a game that served no purpose"
      @winner_status = true
    end
  end
end

####################################################
################ Begin Program Code ################
####################################################

game_board = GameBoard.new()

print "Player 1 enter your name: "
p1_name_input = gets.chomp.capitalize
player1 = Player.new(p1_name_input)

print "Player 2 enter your name: "
p2_name_input = gets.chomp.capitalize
player2 = Player.new(p2_name_input)

game_board.print_board()

while game_board.winner_status == false
  if player1.turn == true
    print "#{player1.name}'s turn: "
    input = gets.chomp.to_i

    while (game_board.board[input - 1] == "X") || (game_board.board[input - 1] == "O") || (input > 9) || (input < 1)
      print "Invalid selection #{player1.name}, try again: "
      input = gets.chomp.to_i
    end

    game_board.board[input - 1] = "X"
    game_board.print_board()
    game_board.winner_check(player1.name)
    player1.turn = false
    player2.turn = true
  elsif player2.turn == true
    print "#{player2.name}'s turn: "
    input = gets.chomp.to_i

    while (game_board.board[input - 1] == "X") || (game_board.board[input - 1] == "O") || (input > 9) || (input < 1)
      print "Invalid selection #{player2.name}, try again: "
      input = gets.chomp.to_i
    end

    game_board.board[input - 1] = "O"
    game_board.print_board()
    game_board.winner_check(player2.name)
    player1.turn = true
    player2.turn = false
  end
end
