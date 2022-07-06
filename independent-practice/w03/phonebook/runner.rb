require_relative "phonebook"

phonebook = Phonebook.new("data.txt")

puts "Welcome to the Digital Phone Book!"

while true
  puts
  puts "Enter a last name to see all entries for that name.\n"
  puts "Enter a last name and a first name seperated by a comma to find a specific individual.\n"
  puts "Or, type 'print' (without the quotes) to see the entire phonebook."
  puts "Type 'exit' to quit."
  
  response = gets.chomp

  if response == "print"
    phonebook.print
  elsif response == "exit"
    break
  elsif response.include?(",")
    data = response.split(",")
    last_name = data[0].strip
    first_name = data[1].strip
    entry = phonebook.full_name_lookup(last_name, first_name)
    if entry
      entry.print
    else
      puts "No one with that name found."
    end
  else
    entries = phonebook.last_name_lookup(response)
    if entries
      entries.each do |entry|
        entry.print
      end
    else
      puts "No one with that last name found."
    end
  end
end