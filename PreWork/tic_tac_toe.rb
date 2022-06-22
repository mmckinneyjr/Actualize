class Player

    def initialize(name)
        @name = name
        @turn = true     
        @selection = false
    end

    def name 
        @name
    end

    def turn=(t)
        @turn = t
    end
    def turn 
        @turn
    end

    def selection=(t)
        @selection = t
    end
    def selection 
        @selection
    end

end




class GameBoard

    def initialize()
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @winner_status = false
    end

    ##### Store board array
    def board 
        @board
    end
    def board(selection, player)
        if player == 1
            @board[selection - 1] = "X"
        elsif player == 2
            @board[selection - 1] = "O"
        end 
        print_board()
    end


    def winner_status
        @winner_status
    end
    def winner_status
        @winner_status = false
    end


    ##### Print board and update with new array selections when called
    def print_board()
        system "clear"
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
        puts "---|---|---"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts "---|---|---"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
        puts
    end

    ###### Checks logic in array to see/determine winner 
    def winner_check(winner_name)
        ### Player 1
        if @board[0] && @board[1] && @board[2] == "X" || 
           @board[3] && @board[4] && @board[5] == "X" ||
           @board[6] && @board[7] && @board[8] == "X" ||
           @board[0] && @board[3] && @board[6] == "X" ||
           @board[1] && @board[4] && @board[7] == "X" ||
           @board[2] && @board[5] && @board[8] == "X" ||
           @board[0] && @board[4] && @board[8] == "X" ||
           @board[6] && @board[4] && @board[2] == "X"
           puts "#{winner_name} Wins!!!"
           @winner_status = true

        end
        ### Player 2    
        if @board[0] && @board[1] && @board[2] == "O" || 
              @board[3] && @board[4] && @board[5] == "O" ||
              @board[6] && @board[7] && @board[8] == "O" ||
              @board[0] && @board[3] && @board[6] == "O" ||
              @board[1] && @board[4] && @board[7] == "O" ||
              @board[2] && @board[5] && @board[8] == "O" ||
              @board[0] && @board[4] && @board[8] == "O" ||
              @board[6] && @board[4] && @board[2] == "O"
              puts "#{winner_name} Wins!!!"
        end

    end

end



####################################################
################ Begin Program Code ################
####################################################

game_board = GameBoard.new()

print "Player 1 enter your name: "
input = gets.chomp.capitalize
player1 = Player.new(input)

print "Player 2 enter your name: "
input = gets.chomp.capitalize
player2 = Player.new(input)


while game_board.winner_status == false
    
    game_board.print_board()
    puts "winner status: #{game_board.winner_status}"
    

    if player1.turn == true

        while player1.selection == false
            
            print "#{player1.name}'s turn: "
            input = gets.chomp.to_i

            if game_board.board[input] != "X" || game_board.board[0] != "O"        
                game_board.board(input, 1)
                game_board.winner_check(player1.name)

                player1.turn = false
                player2.turn = true

            end


        end

    end




    puts "winner status: #{game_board.winner_status}"

    if player2.turn == true
    
        print "#{player2.name}'s turn: "
        input = gets.chomp.to_i
        
        game_board.board(input, 2)
        game_board.winner_check(player2.name)
        

        player1.turn = true
        player2.turn = false

    end
  

end


















