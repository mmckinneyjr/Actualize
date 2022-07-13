module AwesomeGameRandomizer
  class Flip
    def self.flip_coin
      coin = ["heads", "tails"]
      coin[rand(0..1)]
    end
  end
end
