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
    @board = [["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"],
              ["-", "-", "-", "-", "-", "-"]]

    @winner_status = false
  end

  def print_board()
    system "clear"
    puts "-----------"
    x = 0
    while x < @board.size
      puts "#{@board[x][0]} #{@board[x][1]} #{@board[x][2]} #{@board[x][3]} #{@board[x][4]} #{@board[x][5]}"
      x += 1
    end
    puts "-----------"
    puts "1 2 3 4 5 6"
    puts "-----------"
  end

  ##### Checks for four in a row
  def winner_check(player_mark, board)
    h = 0
    v = 0
    u = 0
    d = 0

    # horizontal check
    while h < board.size - 3
      i = -1
      while i < board[0].size
        if (board[i][h] == "X" && board[i][h + 1] == "X" && board[i][h + 2] == "X" && board[i][h + 3] == "X") ||
           (board[i][h] == "O" && board[i][h + 1] == "O" && board[i][h + 2] == "O" && board[i][h + 3] == "O")
          @winner_status = true
        end
        i += 1
      end
      h += 1
    end

    # vertical check
    while v - 1 < board[0].size - 3
      i = 0
      while i < board.size
        if (board[v][i] == "X" && board[v + 1][i] == "X" && board[v + 2][i] == "X" && board[v + 3][i] == "X") ||
           (board[v][i] == "O" && board[v + 1][i] == "O" && board[v + 2][i] == "O" && board[v + 3][i] == "O")
          @winner_status = true
        end
        i += 1
      end
      v += 1
    end

    # up left to right check
    while u - 1 < board[0].size
      i = 0
      while i < board.size - 3
        if (board[u][i] == "X" && board[u - 1][i + 1] == "X" && board[u - 2][i + 2] == "X" && board[u - 3][i + 3] == "X") ||
           (board[u][i] == "O" && board[u - 1][i + 1] == "O" && board[u - 2][i + 2] == "O" && board[u - 3][i + 3] == "O")
          @winner_status = true
        end
        i += 1
      end
      u += 1
    end

    # down left to right check
    while d - 1 < board[0].size
      i = 0
      while i < board.size - 3
        if (board[d][i] == "X" && board[d - 1][i - 1] == "X" && board[d - 2][i - 2] == "X" && board[d - 3][i - 3] == "X") ||
           (board[d][i] == "O" && board[d - 1][i - 1] == "O" && board[d - 2][i - 2] == "O" && board[d - 3][i - 3] == "O")
          @winner_status = true
        end
        i += 1
      end
      d += 1
    end
  end
end

##### Instantiation of new board/game
game_board = GameBoard.new()

##### Function that adds respective players "X" or "O" to the board/ storing array
def player_add_marks(c, board_array, p)
  n = 0
  while n < board_array.size
    if board_array[n][c - 1] == "X" || board_array[n][c - 1] == "O"
      board_array[n - 1][c - 1] = p
      break
    elsif n == board_array[c].size
      board_array[n][c - 1] = p
    end
    n += 1
  end
end

##### Initial user prompt, asks for player1 and player2's names
##### and then prints the blank board
print "Player 1 enter your name: "
p1_name_input = gets.chomp.capitalize
player1 = Player.new(p1_name_input)

print "Player 2 enter your name: "
p2_name_input = gets.chomp.capitalize
player2 = Player.new(p2_name_input)

game_board.print_board()

##### Game play begins, loop will end when a player has 4 in a row
while game_board.winner_status == false
  if player1.turn == true
    print "#{player1.name}'s turn: "
  else
    print "#{player2.name}'s turn: "
  end
  input = gets.chomp.to_i

  if input.to_i == 0 || input.to_i > 6
    game_board.print_board()
    print "Invalid entry, still "
  elsif game_board.board[0][input.to_i - 1] != "-"
    game_board.print_board()
    puts "This column is full, still "
  else
    if player1.turn == true
      player_add_marks(input, game_board.board, "X")
      game_board.print_board()

      game_board.winner_check("X", game_board.board)
      if game_board.winner_status == true
        puts "#{player1.name} wins!!!"
      end

      player1.turn = false
      player2.turn = true
    elsif player2.turn == true
      player_add_marks(input, game_board.board, "O")
      game_board.print_board()

      game_board.winner_check(")", game_board.board)
      if game_board.winner_status == true
        puts "#{player2.name} wins!!!"
      end

      player1.turn = true
      player2.turn = false
    end
  end
end
