
class FortunePagesController < ApplicationController
  def fortune_teller
    random = rand(1..3)
    fortune = ""

    case random

    when 1
      fortune = "Courage is not simply one of the virtues, but the form of every virtue at the testing point."
    when 2
      fortune = "Don’t worry about money. The best things in life are free."
    when 3
      fortune = "Courage is not the absence of fear; it is the conquest of it."
    else
      fortune = "Sorry you have no fortune"
    end

    rand_nums = "#{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}"


    render plain: "#{fortune} \nLucky Numbers: #{rand_nums}"
    
  end



  def page_counts
    count = 0
    count += 1 
    render json: {count: count}
  end
end
