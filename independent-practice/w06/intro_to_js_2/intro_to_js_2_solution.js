/////////////////////////////////////////////////////////////
////////////////////// METHODS PART 3 ///////////////////////
/////////////////////////////////////////////////////////////

//1. Read about the Ruby reduce method. Then refactor the code below using reduce.
numbers = [1, 2, 4, 2];
// sum = 0
// numbers.each do |number|
//   sum += number
// end
// p sum

console.log(numbers.reduce((sum, num) => sum + num));

//2. Write a method called scrabble_score which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:

function scrabble_score(word) {
  points = {
    a: 1,
    b: 3,
    c: 3,
    d: 2,
    e: 1,
    f: 4,
    g: 2,
    h: 4,
    i: 1,
    j: 8,
    k: 5,
    l: 1,
    m: 3,
    n: 1,
    o: 1,
    p: 3,
    q: 10,
    r: 1,
    s: 1,
    t: 1,
    u: 1,
    v: 4,
    w: 4,
    x: 8,
    y: 4,
    z: 10,
  };

  return word
    .toLowerCase()
    .split("")
    .reduce((sum, x) => sum + points[x], 0);
}

//Use the reduce method to perform the computation in your scrabble_score method. The code should work as follows:

console.log(scrabble_score("scholar")); // => 12
console.log(scrabble_score("hello")); // =. 8

//3. Use the methods map, select, and reduce with the following array of hashes:
items = [
  { title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: "book" },
  { title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: "book" },
  { title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: "book" },
  { title: "ruby", words: 1313, tags: ["ruby"], type: "article" },
  { title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: "book" },
];

//and calculate the total amount of words for all items of type :book. The result should be: // => 3906

console.log(
  items
    .filter((item) => item.type == "book")
    .map((count) => count["words"])
    .reduce((sum, x) => sum + x)
);

//4. Write a method called mutation?, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
function mutation(str1, str2) {
  return str2.split("").every((x) => str1.split("").includes(x));
}

console.log(mutation("burly", "ruby")); //  => true
console.log(mutation("burly", "python")); //  => false

//5. Write a method called sum_of_range, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.

function sumOfRange(n) {
  n.sort();
  a = Array(n[1] - n[0] + 1)
    .fill()
    .map((_, i) => n[0] + i);
  return a.reduce((sum, num) => sum + num);
}

console.log(sumOfRange([1, 4])); //=> 10
console.log(sumOfRange([4, 1])); //=> 10

/////////////////////////////////////////////////////////////
////////////////////// METHODS PART 4 ///////////////////////
/////////////////////////////////////////////////////////////

//1. Read about the Ruby sort method. Then sort the following array of hashes by age. (Note - do not use the sort_by method for this exercise)
people = [
  { name: "Saron", age: 34 },
  { name: "Majora", age: 28 },
  { name: "Danilo", age: 45 },
];

console.log(people.sort((x, y) => x.age - y.age));

//2. Use the sort method to sort the array of hashes first by age, then by name.
people = [
  { name: "bob", age: 15, gender: "male" },
  { name: "alice", age: 25, gender: "female" },
  { name: "bob", age: 56, gender: "male" },
  { name: "dave", age: 45, gender: "male" },
  { name: "alice", age: 56, gender: "female" },
  { name: "adam", age: 15, gender: "male" },
];

// The result should be:

// [
//   {:name=>"adam", :age=>15, :gender=>"male"},
//   {:name=>"bob", :age=>15, :gender=>"male"},
//   {:name=>"alice", :age=>25, :gender=>"female"},
//   {:name=>"dave", :age=>45, :gender=>"male"},
//   {:name=>"alice", :age=>56, :gender=>"female"},
//   {:name=>"bob", :age=>56, :gender=>"male"}
// ]

console.log(people.sort((x, y) => x.name.localeCompare(y.name)).sort((x, y) => x.age - y.age));

//3. Use the sort and map methods to convert the array of hashes
movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 },
];

// into an array of titles sorted by their ratings highest to lowest. The result should be:
// ["Bad Boys", "Die Hard", "The Chamber", "Fracture"]

console.log(movies.sort((x, y) => x.title.localeCompare(y.title)).map((x) => x.title));

//4. Find the needle by writing one line of code. As an example, if haystack = [:hay, :needle, :hay], you'd pull it out with: haystack[1]

haystack = {
  hay: [
    "hay",
    "hay",
    "hay",
    { hay: { hay: ["hay", { hay: ["hay", "hay", "needle"] }, "hay", "hay", "hay"] } },
    "hay",
    "hay",
  ],
};

console.log(haystack["hay"][3]["hay"]["hay"][1]["hay"][2]);

//5. Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

function findMissingLetter(string) {
  a = "abcdefghijklmnopqrstuvwxyz";

  if (string) {
    a1 = a.substring(0, a.indexOf(string[0]));
    a2 = a.split(string.split("")[string.length - 1])[1];

    a = a
      .split("")
      .filter((x) => !a1.includes(x))
      .filter((x) => !a2.includes(x));

    missing = a.filter((x) => !string.split("").includes(x)).join("");

    if (missing) {
      return missing;
    } else {
      return null;
    }
  } else {
    return "";
  }
}

console.log(findMissingLetter("opqrsuv")); // => "t"
console.log(findMissingLetter("xyz")); // => nil
console.log(findMissingLetter("orsv")); // => "pqtu"
console.log(findMissingLetter("cdfgh")); // => "e"
console.log(findMissingLetter(""));
