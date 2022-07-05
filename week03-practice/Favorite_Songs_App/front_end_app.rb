require "http"

# response = HTTP.get("http://localhost:3000/songs")
# songs = response.parse(:json)

# puts ""

# songs.each do |song|
#   puts "Title: #{song["title"]}"
#   puts "Album: #{song["album"]}"
#   puts "Artist: #{song["artist"]}"
#   puts "Year: #{song["year"]}"
#   puts ""
# end

response = HTTP.get("http://localhost:3000/songs")
songs = response.parse(:json)

puts ""

songs.each do |song|
  puts "Title: #{song["title"]}"
  puts "Album: #{song["album"]}"
  puts "Artist: #{song["artist"]}"
  puts "Year: #{song["year"]}"
  puts ""
end
