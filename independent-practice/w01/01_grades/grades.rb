def final_grade(array)
  sum = 0

  array.each do |g|
    sum = sum + g
  end

  if array.size == 0
    "I"
  else
    num_grade = (sum / array.size).round()
    puts num_grade

    if num_grade >= 90
      "A"
    elsif num_grade >= 80 && num_grade < 90
      "B"
    elsif num_grade >= 70 && num_grade < 80
      "C"
    elsif num_grade >= 60 && num_grade < 80
      "D"
    else
      "F"
    end
  end
end
