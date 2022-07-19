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
    if board.all? { |b| b == "X" || b == "O" } && @winner_status == false
      puts "It's a tie: That is a game that served no purpose"
      @winner_status = true
    end
  end
end
