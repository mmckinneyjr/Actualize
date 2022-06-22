# Use hashes with symbols to represent the following scenario:
# You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.

# Represent 3 items using hashes. Each hash should have the same keys with different values.

# Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

car1 = { :make => "Ford", :model => "Mustang", :color => "blue", :year => 1984, :price => 10000 }
car2 = { :make => "Plymouth", :model => "Roadrunner", :color => "orange", :year => 1970, :price => 60000 }
car3 = { :make => "Toyota", :model => "Tacoma", :color => "grey", :year => 2017, :price => 30000 }

# Exercise: Rewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Car
  attr_accessor :make, :model, :color, :year, :price

  def initialize(input_options)
    @make = input_options[:make]
    @model = input_options[:model]
    @color = input_options[:color]
    @year = input_options[:year]
    @price = input_options[:price]
  end

  # def initialize(make, model, color, year, price)
  #   @make = make
  #   @model = model
  #   @color = color
  #   @year = year
  #   @price = price
  # end

end

car_1 = Car.new(make: "Ford", model: "Mustang", color: "blue", year: 1984, price: 10000)
car_2 = Car.new(make: "Plymouth", model: "Roadrunner", color: "orange", year: 1970, price: 60000)
car_3 = Car.new(make: "Toyota", model: "Tacoma", color: "grey", year: 2017, price: 30000)

puts car_1.make
puts car_2.year
puts car_3.model
