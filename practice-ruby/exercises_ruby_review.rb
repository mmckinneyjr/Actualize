require "faker"

# ######### 1. Variables, Arrays, and Loops ##########

# #1. Create a program that asks the user for their favorite 5 foods. Then display those foods as an array, using the p keyword.
# #2. Now, instead of printing out the array, output 5 separate lines of each food, with the prefix, “I love”. For example:

# foods = []

# puts "Enter 5 of your favorite foods"

# i = 1
# while i < 6
#   print "Food #{i}: "
#   foods_input = gets.chomp()
#   foods << foods_input
#   i += 1
# end

# puts ""

# foods.each do |food|
#   puts "I love #{food}"
# end

# puts ""

# n = 1

# # I love cobb salad
# # I love spaghetti
# # I love pizza
# # I love Swedish meatballs
# # I love mac and cheese

# #3. Finally, change your program so that when the list is printed in the terminal, each food is prefaced with a number, beginning with 1 and going up to 5, for example:

# foods.each do |food|
#   puts "#{n}. I love #{food}"
#   n += 1
# end

# # 1.cobb salad
# # 2.spaghetti
# # 3.pizza
# # 4.Swedish meatballs
# # 5.mac and cheese

##################################################
######### 2. Operators and Conditionals ##########
##################################################

# #1. Create and define a variable count = 0. Using a loop and the += operator, output the following:

# count = 0

# while count < 11
#   puts count
#   count += 1
# end

# # 0
# # 1
# # 2
# # 3
# # 4
# # 5
# # 6
# # 7
# # 8
# # 9
# # 10
# # Translate the following into ruby code. Run the program to make sure it works:

# # Sam enjoys cooking. Make an array with recipe names to represent the different recipes Sam can cook.
# # Sally speaks many languages. Make an array with language names to represent the languages Sally can speak.
# # If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. Based on the above arrays, print out a message describing whether or not they should date.
# # If Sam can make crepes or Sally can speak French, they should marry. Based on the above arrays, print out a message describing whether or not they should marry.

# #should get married
# recipes1 = ["chili", "cornbread", "enchilada", "mac n cheese", "philly cheese", "hotdogs", "hamburgers", "salad", "tacos", "crepes", "pancakes"]
# languages1 = ["english", "polish", "german", "spanish", "french", "russian"]

# if recipes1.include?("crepes") || languages1.include?("french")
#   puts "Sam and Sally should get married"
# elsif recipes1.size > 10 && languages1.size > 5
#   puts "Sam and Sally should date"
# else
#   puts "Sam and Sally should NOT date"
# end

# # should not date
# recipes2 = ["chili", "cornbread", "enchilada", "mac n cheese", "philly cheese", "hotdogs", "hamburgers", "salad", "tacos"]
# languages2 = ["english", "polish", "spanish"]

# if recipes2.include?("crepes") || languages2.include?("french")
#   puts "Sam and Sally should get married"
# elsif recipes2.size > 10 && languages2.size > 5
#   puts "Sam and Sally should date"
# else
#   puts "Sam and Sally should NOT date"
# end

# ### should date
# recipes3 = ["chili", "cornbread", "enchilada", "mac n cheese", "philly cheese", "hotdogs", "hamburgers", "salad", "tacos", "pancakes", "bacon"]
# languages3 = ["english", "polish", "german", "spanish", "italian", "russian"]

# if recipes3.include?("crepes") || languages3.include?("french")
#   puts "Sam and Sally should get married"
# elsif recipes3.size > 10 && languages3.size > 5
#   puts "Sam and Sally should date"
# else
#   puts "Sam and Sally should NOT date"
# end

##################################################
############### 3. Hashes ########################
##################################################

# #1. Create a banking program that asks the user 5 times to enter a first name, last name, and email. This information should be stored as an array of hashes.

# #2. Each person should automatically be given an account number which is a randomized ten digit number.

# #3. After the user is finished, the program should print out all the users. For example:

# # FIRST NAME: Joan
# # LAST NAME: Kelson
# # EMAIL: jkelson@juno.com
# # ACCT #: 2372041038
# # and so on for all the users.

# bankers = []

# 5.times do
#   puts "Enter first name: "
#   f_name = Faker::Name.first_name

#   puts "Enter last name: "
#   l_name = Faker::Name.last_name

#   puts "Enter email: "
#   email_add = "#{f_name}#{l_name}@gmail.com".downcase

#   bankers << { :first_name => f_name, :last_name => l_name, :email => email_add, :acct => rand(10 ** 10) }
# end

# bankers.each do |banker|
#   puts "FIRST NAME: #{banker[:first_name]}"
#   puts "LAST NAME: #{banker[:last_name]}"
#   puts "EMAIL: #{banker[:email]}"
#   puts "ACCT #: #{banker[:acct]}"
#   puts ""
# end

# ##################################################
# ############### 4. Final Review ##################
# ##################################################

# #1. Create a program that puts your class into groups! Have the program request the user to enter each student’s name. Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
# # Group: Hermione Seamus
# # Group: Lucius Cho
# # Group: Sirius Luna
# # Group: Severus Draco

# #2.  Refactor the program to take an odd or even number of students. If odd, one group should have three students.
# # Group: Hermione Seamus
# # Group: Lucius Cho
# # Group: Sirius Luna
# # Group: Severus Draco Harry

# students = []

# 11.times do
#   #puts "Enter students: "
#   students << Faker::Name.first_name
# end

# pp students

# if students.size.odd?
#   i = 3
#   x = 4
#   puts "GROUP: #{students[0]} #{students[1]} #{students[2]}"
#   while i < students.size - 1
#     puts "GROUP: #{students[i]} #{students[x]}"
#     i += 2
#     x += 2
#   end
# else
#   i = 0
#   x = 1
#   while i < students.size - 1
#     puts "GROUP: #{students[i]} #{students[x]}"
#     i += 2
#     x += 2
#   end
# end

# ##################################################
# ###################### Bonus #####################
# ##################################################

# bankers = []

# 5.times do
#   puts "Enter first name: "
#   f_name = Faker::Name.first_name

#   puts "Enter last name: "
#   l_name = Faker::Name.last_name

#   puts "Enter email: "
#   while true
#     email_add = "#{f_name}#{l_name}@gmail.com".downcase
#     if email_add.include?("@") && email_add.include?(".com")
#       break
#     end
#     puts "Invalid: Enter email: "
#   end

#   bankers << { :first_name => f_name, :last_name => l_name, :email => email_add, :acct => rand(10 ** 10) }
# end

# bankers.each do |banker|
#   puts "FIRST NAME: #{banker[:first_name]}"
#   puts "LAST NAME: #{banker[:last_name]}"
#   puts "EMAIL: #{banker[:email]}"
#   puts "ACCT #: #{banker[:acct]}"
#   puts ""
# end

# print "Enter account number: "
# input_acc = gets.chomp.to_i

# banker_found = false

# i = 0
# while i < bankers.size && banker_found == false
#   if bankers[i][:acct] == input_acc
#     puts "FIRST NAME: #{bankers[i][:first_name]}"
#     puts "LAST NAME: #{bankers[i][:last_name]}"
#     puts "EMAIL: #{bankers[i][:email]}"
#     puts "ACCT #: #{bankers[i][:acct]}"
#     puts ""
#     banker_found = true
#   end
#   i += 1
# end

# if banker_found == false
#   puts "Banker not found"
# end

# ##################################################
# ###### Object oriented programming practice ######
# ##################################################

class Card
  attr_accessor :question

  def initialize
    @question = question
  end

  def question
  end
end

class Deck
  attr_accessor :t_data

  def initialize(t_data)
    @t_data = t_data
  end

  def remaining_cards
    @t_data.size
  end

  def draw_card
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True",
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
