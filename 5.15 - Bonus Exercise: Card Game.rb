#Ruby

deck = [ 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 
          9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14 ]

deck = deck.shuffle

player1 = []
player2 = []


def deal_deck(p1, p2, d)
    i = 0
    while i < d.size
        p1 << d[i]
        i += 1
        p2 << d[i]
        i += 1
    end
end

def card_value(num)
    if num == 11
        return "Jack"    
    elsif num == 12
        return "Queen"
    elsif num == 13
        return "King"
    elsif num == 14
        return "Ace"
    else
        return num
    end
end


deal_deck(player1, player2, deck)


# p player1
# p player2
    

turn_count = 1
while player1.size > 0 && player2.size > 0  
    i = 0

    puts "\e[33m-------------------- Turn #{turn_count} --------------------\e[0m"
    puts "player 1 has #{player1.size} cards : player 2 has #{player2.size} cards"

    if player1[0] > player2[0]
        puts "Player 1: #{card_value(player1[0])}"
        puts "Player 2: #{card_value(player2[0])}"
        puts "Player 1 wins that round!"
        player1.rotate!(1)
        player1.push(player2[0])
        player2.shift(1)

    elsif player2[0] > player1[0]
        puts "Player 1: #{card_value(player1[0])}"
        puts "Player 2: #{card_value(player2[0])}"
        puts "Player 2 wins that round!"
        player2.rotate!(1)
        player2.push(player1[0])
        player1.shift(1)

    elsif player1[i] == player2[i]
        y = 5
        
        while player1[i] == player2[i]
            
            puts "Player 1: #{card_value(player1[i])}"
            puts "Player 2: #{card_value(player2[i])}"
            puts "\e[31m!!! THIS MEANS WAR !!!\e[0m"
            puts "Player1 puts face down: #{card_value(player1[i+1])}, #{card_value(player1[i+2])}, #{card_value(player1[i+3])}. The war card is: #{card_value(player1[i+4])}"
            puts "Player2 puts face down: #{card_value(player2[i+1])}, #{card_value(player2[i+2])}, #{card_value(player2[i+3])}. The war card is: #{card_value(player2[i+4])}"
       
            if player1[i+4] == player2[i+4] && player1.size > i+4 && player2.size > i+4
                i += 4
                y += 4

            elsif player1[i+4] == nil || player2[i+4] == nil
                if player1.size > player2.size
                    puts "Player 2 does not have enough cards to continue"
                    (player1 << player2).flatten!
                    player2.clear
                    break
                elsif player2.size > player1.size
                    puts "Player 1 does not have enough cards to continue"
                    (player2 << player1).flatten!
                    player1.clear
                    break
                end

            elsif player1[i+4] > player2[i+4] && player1.size > i+4 && player2.size > i+4 && player1[i] != nil && player2[i] != nil
                puts "Player 1 wins that round!"
                player1.rotate!(1)
                x = 0
                y.times do
                    player1.push(player2[x])
                    x += 1
                end
                player2.shift(y)
                i = 0
        
            elsif player2[i+4] > player1[i+4] && player1.size > i+4 && player2.size > i+4
                puts "Player 2 wins that round!"
                player2.rotate!(1)
                x = 0
                y.times do
                    player2.push(player1[x])
                    x += 1
                end
                player1.shift(y)
                i = 0

            end
            puts " "

        end

    end
    puts " "
    turn_count += 1

end


if player1.size == 0
    puts "\e[33mPLAYER 2 WINS THE GAME!!!\e[0m"
else
    puts "\e[33mPLAYER 1 WINS THE GAME!!!\e[0m"
end






