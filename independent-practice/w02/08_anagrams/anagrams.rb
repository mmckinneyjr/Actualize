def match(word, list)
  anagram_list = []

  list.each do |list_word|
    if list_word.downcase.split("").sort == word.downcase.split("").sort && list_word.downcase != word.downcase
      anagram_list << list_word
    end
  end
  return anagram_list

end


