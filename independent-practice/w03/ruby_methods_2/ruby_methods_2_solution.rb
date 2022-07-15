# Write the solutions to each problem here!

# 1
numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#   if number % 2 == 0
#     even_numbers << number
#   end
# end
# p even_numbers

p numbers.select { |n| n.even? }

# 2
movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 },
]

p movies.select { |a| a[:rating] < 4.0 }

# 3
movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 },
]

p movies.select { |a| a[:title].downcase.include? "b" }.map { |b| b[:id] }

# 4

def palindrome?(str)
  str == str.reverse ? true : false
end

p palindrome?("tacocat")   #=> true
p palindrome?("wazzzzup")  #=> false
p palindrome?("eye")  #=> true

# 5

def split_array(array, int)
  my_array = []
  i = 0
  y = 0
  while i < array.size / int
    temp_array = []
    x = 0
    while x < int
      temp_array << array[y]
      x += 1
      y += 1
    end
    my_array << temp_array
    i += 1
  end
  return my_array
end

p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]
