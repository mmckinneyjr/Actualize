require "./store_item"

car_1 = Car.new(make: "Ford", model: "Mustang", color: "blue", year: 1984, price: 10000, top_speed: 130, acceleration: 18, mpg: 20)
car_2 = Car.new(make: "Plymouth", model: "Roadrunner", color: "orange", year: 1970, price: 60000, top_speed: 140, acceleration: 11, mpg: 14)
car_3 = Car.new(make: "Toyota", model: "Tacoma", color: "grey", year: 2017, price: 30000, top_speed: 110, acceleration: 24, mpg: 24)

puts car_1.make
puts car_2.year
puts car_3.model
puts ""
puts car_1.print_info
puts car_1.print_details
puts ""
puts car_2.print_info
puts car_2.print_details
puts ""
puts car_3.print_info
puts car_3.print_details
puts ""
