require "http"

response = HTTP.get("http://localhost:3000/movies")
movies = response.parse(:json)
puts ""

movies.each do |movie|
  puts "Title: #{movie["title"]}"
  puts "Year: #{movie["year"]}"
  puts "Plot: #{movie["plot"]}"
  puts ""
end
