module EmailReportable
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info

class Manager < Employee
  include EmailReportable

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    puts "Give all employees raises!"

    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    puts "YOU ARE FIRED!!!"

    @employees.each do |employee|
      employee.active = false
    end
  end
end

class Intern < Employee
  include EmailReportable
end

employee1 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 80000, active: true)
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

puts

manager.print_info
puts

manager.send_report
puts

manager.give_all_raises
employee1.print_info
employee2.print_info
puts

manager.fire_all_employees
puts "#{employee1.first_name} is active?: #{employee1.active}"
puts "#{employee2.first_name} is active?: #{employee2.active}"
puts

intern = Intern.new(first_name: "Adrienne", last_name: "lowe", salary: 50000, active: true)
intern.print_info
intern.send_report
puts
