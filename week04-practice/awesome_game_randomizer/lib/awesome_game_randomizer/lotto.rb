module AwesomeGameRandomizer
  class Lotto
    def self.pick()
      n = []
      i = 0
      if 7 <= 50
        while i < 7
          pick = rand(1..50)
          unless n.include?(pick)
            n << pick
            i += 1
          end
        end
      end
      puts "#{n[0]}, #{n[1]}, #{n[2]}, #{n[3]}, #{n[4]}, #{n[5]}, [#{n[6]}]"
    end
    self.pick
  end
end
