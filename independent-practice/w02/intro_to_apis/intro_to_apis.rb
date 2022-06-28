require "http"

print "Please enter a name for a subreddit: "
subreddit = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit}.json")
posts = response.parse["data"]["children"]

i = 1
posts.each do |post|
  puts "  #{i}. #{post["data"]["title"]}"
  i += 1
end

###############################################################################

puts ""
print "Enter a number to see comments or q to quit: "
selection = gets.chomp.to_i

response = HTTP.get("https://www.reddit.com#{posts[selection]["data"]["permalink"]}.json")
comments = response.parse[1]["data"]["children"]

if selection == "q"
  exit
else
  puts ""
  comments.each do |comment|
    puts "Author: #{comment["data"]["author"]}"
    puts "Comment: #{comment["data"]["body"]}"
    puts ""
  end
end
