module AwesomeGameRandomizer
  class Dice
    def self.roll(num)
      dice = []
      num.times do
        dice << rand(1..6)
      end
      return dice
    end
  end
end
