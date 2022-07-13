module AwesomeGameRandomizer
  class Lotto
    def self.pick(count, nums)
      lotto_nums = []
      i = 0
      if count <= nums
        while i < count
          pick = rand(1..nums)
          unless lotto_nums.include?(pick)
            lotto_nums << pick
            i += 1
          end
        end
      end
      puts "Error: not enough numbers"
    end
  end
end
