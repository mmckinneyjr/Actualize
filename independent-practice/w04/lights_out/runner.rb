require_relative "game"
puts
puts "Welcome to Lights Out!"

puts "Enter file path or Press enter for random puzzle"
puzzle = gets.chomp.strip
if puzzle.nil? || puzzle == ""
  game = Game.new()
else
  puts "Enter level (1-3)"
  level = gets.chomp.to_i - 1
  game = Game.new(puzzle, level)
end
system("clear")
puts "- Lights Out -"
game.print_grid

puts
while game.won? == false
  print "Select a Column (1-5): "
  col_select = gets.chomp.to_i - 1

  while true
    if col_select < 0 || col_select > 4
      puts "--Invalid entry--"
      print "Select a Column (1-5): "
      col_select = gets.chomp.to_i - 1
    else
      break
    end
  end

  print "Select a Row (1-5): "
  row_select = gets.chomp.to_i - 1

  while true
    if row_select < 0 || row_select > 4
      puts "--Invalid entry--"
      print "Select a Row (1-5): "
      row_select = gets.chomp.to_i - 1
    else
      break
    end
  end

  system("clear")
  puts "- Lights Out -"
  game.choose_space(row_select, col_select)
  game.print_grid
  puts
end
