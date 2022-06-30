module Vehicle
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake(brake)
    @speed = brake
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehicle

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

car.accelerate
car.accelerate
car.accelerate

puts "The car accelerating speed is #{car.accelerate}, its breaking speed is #{car.brake(30)}, and is head in the #{car.turn("North")} direction "
puts "The bikes accelerating speed is #{bike.accelerate}, its breaking speed is #{bike.brake(10)}, and is head in the #{bike.turn("South")} direction "
