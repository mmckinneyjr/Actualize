require "./purchasable_module.rb"

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
  include Purchasable
  attr_accessor :make, :model, :color, :year, :price, :top_speed, :acceleration, :mpg

  def initialize(input_options)
    @make = input_options[:make] || "No info provided"
    @model = input_options[:model] || "No info provided"
    @color = input_options[:color] || "No info provided"
    @year = input_options[:year] || "No info provided"
    @price = input_options[:price] || "No info provided"
    @top_speed = input_options[:top_speed] || "No info provided"
    @acceleration = input_options[:acceleration] || "No info provided"
    @mpg = input_options[:mpg] || "No info provided"
  end
end

# car_1 = Car.new(make: "Ford", model: "Mustang", color: "blue", year: 1984, price: 10000)
# car_2 = Car.new(make: "Plymouth", model: "Roadrunner", color: "orange", year: 1970, price: 60000)
# car_3 = Car.new(make: "Toyota", model: "Tacoma", color: "grey", year: 2017, price: 30000)

# puts car_1.make
# puts car_2.year
# puts car_3.model
