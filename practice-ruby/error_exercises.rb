# #Exercise 1: Print a message to a pirate.
# puts "Hello!"
# greeting = gets.chomp
# if greeting["Arrr!"]
#   puts "Go away, pirate."
# else
#   puts "Greetings, hater of pirates!"
# end

# #Exercise 2: Write a function to print when each person died in a sentence.
# dickens = ["Charles Dickens", "1870"]
# thackeray = ["William Thackeray", "1863"]
# trollope = ["Anthony Trollope", "1882"]
# hopkins = ["Gerard Manley Hopkins", "1889"]

# def died(array)
#   name = array[0]
#   year = array[1]
#   puts "#{name} died in #{year}."
# end

# puts died(dickens)
# puts died(thackeray)
# puts died(trollope)
# puts died(hopkins)

# # Exercise 3: Print a message to a time traveler.
# puts "Greetings! What is your year of origin?"
# origin = gets.chomp.to_i
# if origin < 1900
#   puts "That's the past!"
# elsif origin > 1900 && origin < 2020
#   puts "That's the present!"
# else puts "That's the future!" end

# # Exercise 4: Make a class to store and display a person’s info.
# class Person
#   def initialize(fname, lname)
#     @first_name = fname
#     @last_name = lname
#   end

#   def fname
#     @first_name
#   end

#   def to_s
#     @last_name + " " + @first_name
#   end
# end

# tj = Person.new("Thomas", "Jefferson")
# puts tj.fname
# puts tj

# Exercise 5: Write a program that will average 3 numeric exam grades, return an average test score, a corresponding letter grade, and a message stating whether the student is passing.
puts "Input exam grade one:"
exam_one = gets.chomp().to_i

puts "Input exam grade two:"
exam_two = gets.chomp().to_i

puts "Input exam grade three:"
exam_three = gets.chomp().to_i

def list_grade(exam_one, exam_two, exam_three)
  puts "Exams: #{exam_one}, #{exam_two}, #{exam_three}"
end

def average_grade(exam_one, exam_two, exam_three)
  average = (exam_one + exam_two + exam_three) / 3
end

average = average_grade(exam_one, exam_two, exam_three).to_i

def letter_grade(average_grade)
  if average_grade < 59
    puts "Grade: F"
  elsif average_grade >= 60 && average_grade <= 69
    puts "Grade: D"
  elsif average_grade >= 70 && average_grade <= 79
    puts "Grade: C"
  elsif average_grade >= 80 && average_grade <= 89
    puts "Grade: B"
  elsif average_grade >= 90
    puts "Grade: A"
  end
end

def pass_fail(average)
  if average < 59
    puts "Student is failing."
  else
    puts "Student is passing."
  end
end

list_grade(exam_one, exam_two, exam_three)
puts "Average: #{average}"
letter_grade(average)
pass_fail(average)

# Exercise 6: Make a command line app to manage employee data.

# Exercise: Find and fix the errors in this code to make it run!
