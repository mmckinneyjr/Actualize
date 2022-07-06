class Animal
  attr_accessor :state

  def initialize(type)
    @type = type
    @state = "awake"
  end

  def eat(food)
    "The aninmal is eating #{food}"
  end

  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end
end

class Person < Animal
  attr_accessor :age, :gender, :name

  def initialize(input_options)
    @type = "person"
    @age = input_options[:age]
    @gender = input_options[:gender]
    @name = input_options[:name]
  end

  def eat(food)
    puts "#{@name} is eating #{food}"
  end

  def greet
    puts "Hi, I'm #{@name}. I'm a #{@type}, and #{@age} years old."
  end
end
