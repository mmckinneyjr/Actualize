player1 = []
#player2 = [[]]

def add_score(p1)
  print "Throw one: "
  throw1 = gets.chomp.to_i

  print "Throw two: "
  throw2 = gets.chomp.to_i
  p1 << [throw1, throw2]
end

def frame_scrore(p)
  i = 0
  while i < p.size
    s = p[i][0] + p[i][1]
    print "Frame: #{i + 1}"
    print " |#{format("%02d", p[i][0])} #{format("%02d", p[i][1])}"
    print "| #{format("%02d", s)} |"
    i += 1
    puts
  end
end

add_score(player1)
add_score(player1)

frame_scrore(player1)

player1
