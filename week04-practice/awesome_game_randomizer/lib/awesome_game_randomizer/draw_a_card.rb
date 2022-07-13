module AwesomeGameRandomizer
  class DrawCard
    def self.draw
      suits = ["\u2660 Spades", "\u2665 Hearts", "\u2666 Diamonds", "\u2663 Clubs"]
      value = rand(2..14)
      case value
      when 11
        return "Jack of #{suits.sample}"
      when 12
        return "Queen of #{suits.sample}"
      when 13
        return "King of #{suits.sample}"
      when 14
        return "Ace of #{suits.sample}"
      else
        return "#{value} of #{suits.sample}"
      end
    end
  end
end
