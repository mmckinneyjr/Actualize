require "http"

while true
  response = HTTP.get("https://v2.jokeapi.dev/joke/Any?blacklistFlags=nsfw,religious,racist,sexist,explicit")
  jokes = response.parse(:json)

  type = jokes["type"]

  if type == "twopart"
    puts jokes["setup"]
    puts "[Press Enter]"
    enter = gets.chomp
    puts jokes["delivery"]
  else
    puts jokes["joke"]
  end

  puts "[Press Enter to Continue or q to quit]"
  continue = gets.chomp
  if continue == "q"
    break
  end
  system "clear"
end
