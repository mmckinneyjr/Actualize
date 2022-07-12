class Game
  attr_reader :grid

  def initialize
    @grid = [
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0]
    ]

    randomize_grid
  end

  def print_grid
    puts
    @grid.each do |row|
      puts "-" * 11
      print "|"
      row.each do |space|
        if space == 0
          print " |"
        elsif space == 1
          print "X|"
        end
      end
      puts
    end
    puts "-" * 11
  end

  def randomize_grid
    # Your job is to fill this in!
  end

  def choose_space(row_number, column_number)
    # Your job is to fill this in!
  end

  def won?
    # Your job is to fill this in!
  end
end

Game.new.print_grid