class Driving
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Driving
  def initialize
    super
    @fuel = 40
    @make = "Toyota"
    @model = "Tacoma"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Driving
  def initialize
    super
    @type = "Mountain"
    @weight = 45
    @tire_size = 22
  end

  def type
    @type = "Mountain"
  end

  def weight
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new

puts "The bike is accelerating at #{bike.accelerate} mph"
puts "The car is accelerating at #{car.accelerate} mph"

puts bike.ring_bell
puts car.honk_horn

puts bike.type
puts car.model
