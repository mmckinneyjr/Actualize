require "http"

key = 

while true
  print "Enter a word (q to exit): "
  word = gets.chomp

  if word == "q"
    break
  else
    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&sourceDictionaries=all&useCanonical=false&includeTags=false&api_key=#{key}")

    dictionary_word = response.parse(:json)

    `say "#{word}"`
    puts ""
    puts "#{word}".upcase
    if dictionary_word[1]["text"].to_s.strip != ""
      puts "- #{dictionary_word[1]["partOfSpeech"]}"
      puts "    \u2022 #{dictionary_word[1]["text"]}"
    end
    if dictionary_word[2]["text"].to_s.strip != ""
      puts "- #{dictionary_word[2]["partOfSpeech"]}"
      puts "    \u2022 #{dictionary_word[2]["text"]}"
    end
  end
end
