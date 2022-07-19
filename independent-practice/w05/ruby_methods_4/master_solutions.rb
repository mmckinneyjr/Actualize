# 1
# Read about the Ruby `sort` method. Then sort the following array of hashes by age. (Note - do not use the `sort_by` method for this exercise)

people = [
  {"name" => "Saron", "age" => 34},
  {"name" => "Majora", "age" => 28},
  {"name" => "Danilo", "age" => 45}
]

p people.sort { |person, person2| person["age"] <=> person2["age"] }


# 2
# Use the `sort` method to sort the array of hashes first by age, then by name.
# ```
# people = [
#   {name: "bob", age: 15, gender: "male"},
#   {name: "alice", age: 25, gender: "female"},
#   {name: "bob", age: 56, gender: "male"},
#   {name: "dave", age: 45, gender: "male"},
#   {name: "alice", age: 56, gender: "female"},
#   {name: "adam", age: 15, gender: "male"}
# ```
# The result should be:
# ```
# [
#   {:name=>"adam", :age=>15, :gender=>"male"},
#   {:name=>"bob", :age=>15, :gender=>"male"},
#   {:name=>"alice", :age=>25, :gender=>"female"},
#   {:name=>"dave", :age=>45, :gender=>"male"},
#   {:name=>"alice", :age=>56, :gender=>"female"},
#   {:name=>"bob", :age=>56, :gender=>"male"}
# ]
# ```

people = [
  {name: "bob", age: 15, gender: "male"},
  {name: "alice", age: 25, gender: "female"},
  {name: "bob", age: 56, gender: "male"},
  {name: "dave", age: 45, gender: "male"},
  {name: "alice", age: 56, gender: "female"},
  {name: "adam", age: 15, gender: "male"}
]

sorted_by_name = people.sort { |p1, p2| p1[:name] <=> p2[:name] }
puts sorted_by_name.sort { |p1, p2| p1[:age] <=> p2[:age] }


# 3
# Use the `sort` and `map` methods to convert the array of hashes
# ```
# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]
# ```
# into an array of titles sorted by their ratings highest to lowest. The result should be:
# ```
# ["Bad Boys", "Die Hard", "The Chamber", "Fracture"]
# ```

movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 }
]

p movies.sort { |movie1, movie2| movie2[:rating] <=> movie1[:rating] }
        .map { |movie| movie[:title] }


# 4
# Find the needle by writing one line of code. As an example, if `haystack = [:hay, :needle, :hay]`, you'd pull it out with: `haystack[1]`
# ```
haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

p haystack[:hay][3][:hay][:hay][1][:hay][2]


# 5
# Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(string)
  if string.empty?
    missing_letters = ("a".."z").to_a
  else
    alphabet = ("a".."z").to_a
    missing_letters = alphabet[alphabet.index(string.split("").first)..alphabet.index(string.split("").last)]- string.split("")
  end
  missing_letters.empty? ? nil : missing_letters.join
end

p find_missing_letter("orsv")  #=> "pqtu"
p find_missing_letter("cdfgh") #=> "e"
p find_missing_letter("xyz")      #=> nil
p find_missing_letter("")