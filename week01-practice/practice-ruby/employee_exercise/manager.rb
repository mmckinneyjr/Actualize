require "./employee.rb"
require "./email_reportable.rb"

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
