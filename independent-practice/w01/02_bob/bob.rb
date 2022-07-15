def bob_responds(sentence)
  if sentence.strip()[-1] == "?" && sentence == sentence.upcase
    "Calm down, I know what I’m doing!"
  elsif sentence == sentence.upcase && sentence.match?(/[[:alpha:]]/)
    "Why are you yelling at me?"
  elsif sentence.strip()[-1] == "."
    "Sounds good."
  elsif sentence.strip()[-1] == "!"
    "Whoa, chill out!"
  elsif sentence.strip()[-1] == "?"
    "Sure."
  elsif sentence[-1] == " "
    "Fine, be that way."
  else
    "Whatever."
  end
end
