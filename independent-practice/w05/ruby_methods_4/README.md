# Ruby Methods 4

Kepp practicing your ruby methods skills!

#### Exercise

Solve the below problems in the `ruby_methods_4_solution.rb` file inside this folder. Remember to break down the problems into smaller steps when you get stuck. Don't worry about finding the most elegant or clever solution - focus on getting it to work!

1. Read about the Ruby `sort` method. Then sort the following array of hashes by age. (Note - do not use the `sort_by` method for this exercise)
```ruby
people = [
  {"name" => "Saron", "age" => 34},
  {"name" => "Majora", "age" => 28},
  {"name" => "Danilo", "age" => 45}
]
```

2. Use the `sort` method to sort the array of hashes first by age, then by name.
```ruby
people = [
  {name: "bob", age: 15, gender: "male"},
  {name: "alice", age: 25, gender: "female"},
  {name: "bob", age: 56, gender: "male"},
  {name: "dave", age: 45, gender: "male"},
  {name: "alice", age: 56, gender: "female"},
  {name: "adam", age: 15, gender: "male"}
]
```
The result should be:
```ruby
[
  {:name=>"adam", :age=>15, :gender=>"male"},
  {:name=>"bob", :age=>15, :gender=>"male"},
  {:name=>"alice", :age=>25, :gender=>"female"},
  {:name=>"dave", :age=>45, :gender=>"male"},
  {:name=>"alice", :age=>56, :gender=>"female"},
  {:name=>"bob", :age=>56, :gender=>"male"}
]
```

3. Use the `sort` and `map` methods to convert the array of hashes
```ruby
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
into an array of titles sorted by their ratings highest to lowest. The result should be:
```ruby
["Bad Boys", "Die Hard", "The Chamber", "Fracture"]
```

4. Find the needle by writing one line of code. As an example, if `haystack = [:hay, :needle, :hay]`, you'd pull it out with: `haystack[1]`
```ruby
haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}
```

5. Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.
```ruby
p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil
```


#### Deliverable
Complete the exercises in the `ruby_methods_4_solution.rb` file in this folder. 

Navigate to your independent practice repository and git add, commit, and push up to your branch!

