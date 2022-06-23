module Purchasable
  def separate_comma(number)
    reverse_digits = number.to_s.chars.reverse
    reverse_digits.each_slice(3).map(&:join).join(",").reverse
  end

  def print_info
    "A #{@year} #{@make}, #{@model} for sale. Listed price: $#{separate_comma(@price)}."
  end

  def print_details
    "Details: Top Speed: #{@top_speed}/mph. Acceleration: 0-60 in #{@acceleration} seconds. MPG: #{@mpg}."
  end
end
