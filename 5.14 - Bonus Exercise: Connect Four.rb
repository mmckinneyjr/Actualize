board = [
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
    ["-", "-", "-", "-", "-", "-"],
  ]

playing = true
player = 1

def print_board(b)
    x = 0
    while x < b.size
        puts "#{b[x][0]} #{b[x][1]} #{b[x][2]} #{b[x][3]} #{b[x][4]} #{b[x][5]}"
        x += 1
    end
end


def player_add_marks(column_num, board_array, p1, p2)
    n = 0
    while n < 7 
        if board_array[n][column_num] == p1 || board_array[n][column_num] == p2
            board_array[n - 1][column_num] = p1 
            n += 1 
        elsif n == board_array[column_num].size
            board_array[n][column_num] = p1
        end
        n += 1 
    end  
end


def clear_board(board_array)
    i = 0
    while i < board_array.size
        x = 0
        while x < board_array[i].size
            board_array[i][x] = "-"
            x += 1
        end
        i += 1
    end
end


while playing

    print_board(board)

    if player == 1
        print "X's turn, choose a column (0 through 6): "
        column_input = gets.chomp.upcase
    else 
        print "O's turn, choose a column (0 through 6): "
        column_input = gets.chomp
    end

    if column_input == "EXIT"
        EXIT
    elsif column_input == "CLEAR"
        clear_board(board)
        system "clear"
    elsif column_input.to_i == 0
        system "clear"
        puts "invalid entry"
    elsif board[0][column_input.to_i - 1] != "-"
        system "clear"
        puts "This column is full." 
    else
        if player == 1
            player_add_marks(column_input.to_i - 1, board, "X", "O")
            player = 2
        elsif player == 2
            player_add_marks(column_input.to_i - 1, board, "O", "X")
            player = 1
        end
        system "clear"
    end

end
