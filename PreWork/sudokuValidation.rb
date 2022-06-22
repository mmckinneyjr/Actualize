def validSolution(board)
    valid = true
    
    #Across
    i = 0
    while i < board.size && valid == true
        valid = board[i].include?(0) ? false : board[i].uniq.count == 9
        i+=1
    end

    #Down
    i = 0
    while i < board.size && valid == true
        t = []
        x = 0
        while x < board.size && valid == true
            t << board[x][i]
            x+=1
        end
        valid = t.include?(0) ? false : t.uniq.count == 9
        i+=1
    end


    #3x3 block
    i = 0
    while i < 9 && valid == true
        i3=0
        while i3 < 9 && valid == true
            t = []
            i2=0  
            3.times do       
                x = i
                y = i2+i3
                3.times do 
                    t << board[x][y]
                    
                    x+=1        
                end
                i2+=1
            end
            valid = t.include?(0) ? false : t.uniq.count == 9
            i3+=3 
        end
        i+=3
    end

     return valid
end








puts validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
                    [6, 7, 2, 1, 9, 5, 3, 4, 8],
                    [1, 9, 8, 3, 4, 2, 5, 6, 7],
                    [8, 5, 9, 7, 6, 1, 4, 2, 3],
                    [4, 2, 6, 8, 5, 3, 7, 9, 1],
                    [7, 1, 3, 9, 2, 4, 8, 5, 6],
                    [9, 6, 1, 5, 3, 7, 2, 8, 4],
                    [2, 8, 7, 4, 1, 9, 6, 3, 5],
                    [3, 4, 5, 2, 8, 6, 1, 7, 9]])#, true);
           
puts 

puts validSolution([[5, 2, 4, 6, 7, 8, 9, 1, 2], 
                    [6, 7, 2, 1, 9, 0, 3, 4, 9],
                    [1, 0, 0, 3, 4, 2, 5, 6, 0],
                    [8, 5, 9, 7, 6, 1, 0, 2, 0],
                    [4, 2, 6, 8, 5, 3, 7, 9, 1],
                    [7, 1, 3, 9, 2, 4, 8, 5, 6],
                    [9, 0, 1, 5, 3, 7, 2, 1, 4],
                    [2, 8, 7, 4, 1, 9, 6, 3, 5],
                    [3, 0, 0, 4, 8, 1, 1, 7, 9]])#, false);


puts

    puts validSolution([[8, 2, 6, 3, 4, 7, 5, 9, 1],
                        [7, 3, 5, 8, 1, 9, 6, 4, 2],
                        [1, 9, 4, 2, 6, 5, 8, 7, 3],
                        [3, 1, 7, 5, 8, 4, 2, 6, 9],
                        [6, 5, 9, 1, 7, 2, 4, 3, 8],
                        [4, 8, 2, 9, 3, 6, 7, 1, 5],
                        [9, 4, 8, 7, 5, 1, 3, 2, 6],
                        [5, 6, 1, 4, 2, 3, 9, 8, 7],
                        [2, 7, 3, 6, 9, 8, 1, 5, 4]])