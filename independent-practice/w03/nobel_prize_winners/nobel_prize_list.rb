require_relative "winner"
require "http"

class PrizeList
  attr_reader :winners

  def initialize(filename = nil)
    @winners = []
    data = ""

    ### Read data
    if filename
      system("clear")
      file = File.open(filename)
      file_data = file.read
      data = JSON.parse(file_data)
      file.close
    else
      get_data = HTTP.get("https://api.nobelprize.org/v1/prize.json")
      data = get_data.parse(:json)
    end

    ### Data model
    data["prizes"].each do |prizes|
      year = prizes["year"] || "N/A"
      category = prizes["category"] || "N/A"

      if prizes["laureates"] != nil
        prizes["laureates"].each do |info|
          first_name = info["firstname"] || "N/A"
          last_name = info["surname"] || "N/A"
          motivation = info["motivation"] || "N/A"

          winnner = Winner.new(first_name, last_name, motivation, category, year)
          @winners << winnner
        end
      else
        motivation = prizes["overallMotivation"]
        winnner = Winner.new("N/A", "N/A", motivation, category, year)
        @winners << winnner
      end
    end
  end

  def print_all
    winners.each do |winner|
      winner.print
    end
  end

  def print_category(category)
    winners.each do |winner|
      if winner.category.downcase == category.downcase
        winner.print
      end
    end
  end

  def print_year(year)
    winners.each do |winner|
      if winner.year == year
        winner.print
      end
    end
  end
end

#list = PrizeList.new("winners.json")
list = PrizeList.new()

#list.print_all
list.print_category("physics")
list.print_year(2021)
