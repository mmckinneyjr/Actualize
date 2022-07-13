module AwesomeGameRandomizer
  class Coin
    def self.flip
      coin = ["heads", "tails"]
      coin[rand(0..1)]
    end
  end
end
