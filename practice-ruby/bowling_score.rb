player1 = []
#player2 = [[]]

def add_score(p1)
  print "Throw one: "
  throw1 = gets.chomp.to_i

  print "Throw two: "
  throw2 = gets.chomp.to_i
  p1 << [throw1, throw2]
end

add_score(player1)
add_score(player1)

p player1
