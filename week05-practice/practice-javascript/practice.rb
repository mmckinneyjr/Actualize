# Problem 1:
# Write a method that prints out every number from 1 to 100.
100.times do |i|
  puts i + 1
end

# Problem 2:
# Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).
i = 1
50.times do
  puts i
  i += 2
end

# Problem 3:
# Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

def array_func(array)
  puts array.count(55)
end

array = [2, 3, 6, 8, 55, 12, 7, 55, 3, 55, 34]
array_func(array)

# Problem 4:
# Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string.
# For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

def awesomesauce(array)
  new_array = []
  array.each do |i|
    new_array << i
    new_array << "awesomesauce"
  end
  new_array.pop
  pp new_array
end

array = ["a", "b", "c", "d", "e"]
awesomesauce(array)

# Problem 5:
# Start with the hash: item_amounts = {chair: 5, table: 2}
# Someone just bought two chairs. Change the hash such that the chair amount is 3.
# The final result should be: {chair: 3, table: 2}

item_amounts = { chair: 5, table: 2 }
item_amounts[:chair] = 3
puts item_amounts

# Problem 6:
# Start with the hash: item_amounts = {chair: 5, table: 2}
# You received 7 desks to sell. Change the hash to include desks.
# The final result should be: {chair: 5, table: 2, desk: 7}

item_amounts["desk"] = 7
puts item_amounts

# Problem 7:
# Write a method that accepts a number and returns its factorial.
# For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

def factorial_func(num)
  puts num.downto(1).inject(:*)
end

factorial_func(5)

# Problem 8:
# Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array.
# For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

def combo_sum(array1, array2)
  puts array1.map.with_index { |array1, i| [array1[i] + array2[i]] }
end

array1 = [1, 5, 10]
array2 = [100, 500, 1000]

combo_sum(array1, array2)
