require "http"

key = 

print "Enter city to get the weather: "
city = gets.chomp

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=imperial&appid=#{key}")

puts "It is #{response.parse["main"]["temp"]} in #{response.parse["name"]}, with #{response.parse["weather"][0]["description"]}."
