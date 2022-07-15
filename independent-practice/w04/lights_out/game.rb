require "json"

class Game
  attr_reader :grid

  def initialize(file_name = nil, num = nil)
    @grid = [[0, 0, 0, 0, 0],
             [0, 0, 0, 0, 0],
             [1, 0, 1, 0, 1],
             [0, 0, 0, 0, 0],
             [0, 0, 0, 0, 0]]

    if file_name && File.file?(file_name)
      file = File.open(file_name)
      file_data = file.read
      data = JSON.parse(file_data)
      num == nil || num > data.size ? @grid = data[0] : @grid = data[num]
      file.close
    else
      randomize_grid
    end
  end

  def print_grid
    puts
    puts "   1 2 3 4 5"
    @grid.each_with_index do |row, index|
      print "  "
      puts "-" * 11
      print "#{index + 1} |"
      row.each do |space|
        if space == 0
          print " |"
        elsif space == 1
          print "X|"
        end
      end
      puts
    end
    print "  "
    print "-" * 11
    puts
  end

  def randomize_grid
    @grid.map! { |x| x.map { |y| y + rand(0..1) } }
  end

  def choose_space(r, c)
    # Switch between lit and not lit
    @grid[r][c] == 0 ? @grid[r][c] = 1 : @grid[r][c] = 0

    # RIGHT - Add to left square
    @grid[r][c + 1] == 0 ? @grid[r][c + 1] = 1 : @grid[r][c + 1] = 0 if c != 4
    # LEFT - Add to left square
    @grid[r][c - 1] == 0 ? @grid[r][c - 1] = 1 : @grid[r][c - 1] = 0 if c != 0
    # DOWN - Add to down square
    @grid[r + 1][c] == 0 ? @grid[r + 1][c] = 1 : @grid[r + 1][c] = 0 if r != 4
    # UP - Add to up square
    @grid[r - 1][c] == 0 ? @grid[r - 1][c] = 1 : @grid[r - 1][c] = 0 if r != 0
  end

  def won?
    if @grid.flatten.reduce(:+) == 0
      puts "You Won!!!"
      return true
    end
    return false
  end
end
