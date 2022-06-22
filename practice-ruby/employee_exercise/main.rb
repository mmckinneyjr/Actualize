require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

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
