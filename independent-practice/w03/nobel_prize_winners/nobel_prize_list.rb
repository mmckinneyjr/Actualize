require_relative 'winner'

class PrizeList
  
  attr_reader :winners

  def initialize(filename=nil)
    @winners = []

    if filename
      # read data from file - you need to fill this in!
    else
      # read data from api (http://api.nobelprize.org/v1/prize.json)
      # you need to fill this in!
    end
  end

  def print_all
    # you need to fill this in!
  end

  def print_category(category)
    # you need to fill this in!
  end

  def print_year(year)
    # you need to fill this in!
  end
end
