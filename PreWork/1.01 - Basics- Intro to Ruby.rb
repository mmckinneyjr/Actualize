class Song

    def initialize(title, artist, lyrics)
        @title = title
        @artist = artist
        @lyrics = lyrics
    end

    def title     
        return @title
    end

    def artist
        return @artist
    end

    def lyrics
        return @lyrics 
    end

    def info
        return "Song Title: #{title}\nArtist: #{artist}\nLyrics:\n#{lyrics}"

    end
end


song = Song.new("The Artist in the Ambulance", "Thrice", 
"Late night, brakes lock, hear the tires squeal
Red light, can't stop, so I spin the wheel
My world goes black before I
Feel an angel lift me up")
# song.title = "The Artist in the Ambulance"
# song.artist = "Thrice"
# song.lyrics = "Late night, brakes lock, hear the tires squeal\r
# Red light, can't stop, so I spin the wheel\r
# My world goes black before I\r
# Feel an angel lift me up"

#puts "Song Title: #{song.title}\r\nArtist: #{song.artist}\r\nLyrics:\r\n#{song.lyrics}"
puts song.info


# class Cat
#     def name
#         return
#     end

#     def breed
#         return
#     end

#     def age
#         return
#     end
# end




# class Calculator
#     def double(num)
#         x = num * 2
#         return x
#     end

#     def square(num)
#         x = num * num
#         return x
#     end

#     def multiply(num1, num2)
#         x = num1 * num2
#         return x
#     end

#     def divide(num1, num2)
#         x = num1 / num2
#         return x
#     end

#     def average(num1, num2, num3)
#         x = (num1 + num2 + num3) / 3
#         return x
#     end

#     def subtract(num1, num2)
#         return num1 - num2
#     end
# end

# calc = Calculator.new
# # p calc.double(6)
# # p calc.square(9)
# # p calc.multiply(5, 9)
# # p calc.divide(10,5)
# # p calc.average(3,4,5)
# # p calc.subtract(3,4)


# class StringModifier
#     def make_question(str)
#         return str + "?"
#     end
# end

# strMod = StringModifier.new
# #p strMod.make_question("Hello")



# class Dog

#     def set_name(text)
#         @dogs_name = text
#     end

#     def name
#          @dogs_name   
#     end

#     def set_breed(text)
#         @dogs_breed = text
#     end

#     def breed
#          @dogs_breed
#     end

#     def set_age(text)
#         @dogs_age = text
#     end

#     def age 
#          @dogs_age
#     end

# end

# dog = Dog.new

# dog.set_name("Charlie")
# dog.set_breed("Beagle")
# dog.set_age(13)

# puts dog.name
# puts dog.breed
# puts dog.age

