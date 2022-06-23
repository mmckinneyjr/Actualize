# Exercises

# Create a new instance method in your class called full_name. It should return the first name combined with the last name. Also, if the last name ends with the letter s, it should add an “Esquire” at the end.

#     employee1.full_name should return “Majora Carter”
#     employee2.full_name should return “Danilo Campos, Esquire”

# Rewrite the initialize method to provide default values if they are missing from the options hash.

# Create another instance variable for your Employee class called email. If the initialize method does not recieve an email attribute, have the default value mash together the first and last name and add "@gmail.com" to the end. Don't forget to add the email to the attr_reader and attr_writer. Now, employee1.email should return MajorCarter@gmail.com.

# Stretch Challenges (optional)
# Create 100 employees and store them in an array (make a loop!). Loop through each employee and display each of their full names.
# Look up attribute accessor (attr_accessor) and modify the code to use it!

# Deliverable
# Write your solution in the ruby_core_solution.rb file and push to your branch to github!
# In the terminal, navigate to the Independent Practice repository.

# gem install faker <--- needed to use faker to create random names
require "faker"

class Employee
  attr_accessor :first_name, :last_name, :salary, :active, :email

  def initialize(input_options)
    @first_name = input_options[:first_name] || "John"
    @last_name = input_options[:last_name] || "Doe"
    @salary = input_options[:salary] || 0
    @active = input_options[:active] || false
    @email = input_options[:email] || email
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year. #{@email}"
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def full_name
    if @last_name[-1] == "s"
      "#{@first_name} #{@last_name}, Esquire"
    else
      "#{@first_name} #{@last_name}"
    end
  end

  def email
    "#{first_name.downcase}#{last_name.downcase}@gamil.com"
  end
end

employee1 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: true)
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee3 = Employee.new({})
employee1.print_info
employee2.print_info
employee3.print_info
puts ""
puts employee1.full_name
puts employee2.full_name
puts employee3.full_name
puts ""
puts employee1.email
puts employee2.email
puts employee3.email
puts ""
employees_list = []

i = 0
while i < 100
  e = "employee#{i}"
  e = Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, salary: rand(5..6), active: true)

  employees_list << e
  i += 1
end

employees_list.each do |employee|
  puts employee.full_name
end
