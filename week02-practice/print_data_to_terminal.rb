require "http"

response = HTTP.get("http://localhost:3000/contact_all")
pp contacts = response.parse(:json)
puts ""
contacts.each do |contact|
  puts "ID: #{contact["id"]}"
  puts "First Name: #{contact["first_name"].capitalize}"
  puts "Last Name: #{contact["last_name"].capitalize}"
  puts "Email: #{contact["email"]}"
  puts "Phone Number: #{contact["phone_number"]}"
  puts ""
end
