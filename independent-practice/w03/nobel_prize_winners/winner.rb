class Winner

  attr_reader :first_name, :last_name, :motivation, :category, :year
  
  def initialize(first_name, last_name, motivation, category, year)
    @first_name = first_name
    @last_name = last_name
    @motivation = motivation
    @category = category
    @year = year.to_i
  end

  def print
    last_name = self.last_name || ""
    puts "#{self.first_name.ljust(20)} #{last_name.ljust(20)} #{self.year}    #{self.category.capitalize.ljust(15)} #{truncate(self.motivation, 50)}"
  end

  private

  def truncate(string, max)
    string.length > max ? "#{string[0...max]}..." : string
  end
end