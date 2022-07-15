def isbn_verify?(isbn_string)
  sum = 0

  i = 0
  x = 10
  while i < 9
    puts "i:#{i} x:#{x}"
    sum = sum + (isbn_string.chars[i].to_i * x)

    i += 1
    x -= 1
  end

  sum = sum + isbn_string.chars[9].to_i
  puts sum / 11

  if (sum / 11).is_a? Integer
    puts "Good ISBN"
  else
    puts "Bad ISBN"
  end
end

isbn_verify?("1680507222")
