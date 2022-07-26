//////////////////////////////////////////////////////
/////////////////////// PART ONE /////////////////////
//////////////////////////////////////////////////////

// Write your solutions here!

//1. Research the Ruby map method. Then refactor the code below using map.
var numbers = [1, 2, 4, 2];
console.log(numbers.map((x) => x * 2));

//2. Use the map method to convert the array of hashes
items = [
  { id: 1, body: "foo" },
  { id: 2, body: "bar" },
  { id: 3, body: "foobar" },
];
// into an array that only contains the ids. The result should look like:
// [1, 2, 3]
console.log(items.map((x) => x["id"]));

//3. Use the map method with the to_h method to convert the array of hashes
fruits = [
  { name: "apple", color: "red" },
  { name: "banana", color: "yellow" },
  { name: "grape", color: "purple" },
];
// into a single hash where the keys are the names and the values are the colors. The result should look like:
// {"apple" => "red", "banana" => "yellow", "grape" => "purple"}

console.log(new Map(fruits.map((x) => [x["name"], x["color"]])));

//4. Write a method called reverse_a_string that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!

function reverseAString(string) {
  var str = [];
  x = string.split("").length - 1;
  for (i = x; i > -1; i--) {
    str.push(string.split("")[i]);
  }
  return str.join("");
}

console.log(reverseAString("abcde")); //=> "edcba"

//5. Write a method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

function find_longest_word(sentence) {
  longest_word = "";
  words = sentence.split(" ");

  words.forEach((word) => {
    if (word.split("").length > longest_word.split("").length) {
      longest_word = word;
    }
  });
  console.log(longest_word);
}

find_longest_word("What is the longest word in this phrase?"); //=> "longest"

//////////////////////////////////////////////////////
/////////////////////// PART TWO /////////////////////
//////////////////////////////////////////////////////

//1. # Read about the Ruby `select` method. Then refactor the code below using `select`.

numbers = [1, 2, 4, 2];
//  even_numbers = []
//  numbers.each do |number|
//    if number.even?
//      even_numbers << number
//    end
//  end
//  p even_numbers

console.log(numbers.filter((n) => n % 2 == 0));

//2 Use the `select` method with the following array of hashes
movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 },
];
//to create a new array of hashes that only contain movies with a rating less than 4.0.

console.log(movies.filter((m) => m.rating < 4.0));

//3. Use the select method combined with the map method to convert the array of hashes
movies = [
  { id: 1, title: "Die Hard", rating: 4.0 },
  { id: 2, title: "Bad Boys", rating: 5.0 },
  { id: 3, title: "The Chamber", rating: 3.0 },
  { id: 4, title: "Fracture", rating: 2.0 },
];
//to create a new array of hashes that only contain movies with a rating less than 4.0.

console.log(movies.filter((m) => m.rating < 4.0).map((x) => x.id));

//4. Write a method called palindrome? which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

function palindrome(string) {
  var str = [];
  x = string.split("").length - 1;
  for (i = x; i > -1; i--) {
    str.push(string.split("")[i]);
  }

  if (string === str.join("")) {
    return true;
  } else {
    return false;
  }
}

console.log(palindrome("tacocat")); //=> true
console.log(palindrome("wazzzzup")); //=> false

//.5 Write a method called split_array, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter.

function splitArray(array, int) {
  myArray = [];

  i = 0;
  y = 0;

  while (i < array.length / int) {
    tempArray = [];
    x = 0;

    while (x < int) {
      tempArray.push(array[y]);
      x += 1;
      y += 1;
    }
    myArray.push(tempArray);

    i += 1;
  }
  return myArray;
}

console.log(splitArray([0, 1, 2, 3, 4, 5], 2)); // => [[0, 1], [2, 3], [4, 5]]
console.log(splitArray([0, 1, 2, 3, 4, 5], 3)); // => [[0, 1, 2], [3, 4, 5]]
