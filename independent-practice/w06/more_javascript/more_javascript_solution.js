//1. Write a function that takes in an array and returns a new array with each number tripled. For example, given [3, 1, 5, 10], the function should return [9, 3, 15, 30].

function triple(numArray) {
  return numArray.map((x) => x * 3);
}

console.log();
console.log("Problem 01");

var numsOne = [3, 1, 5, 10];
console.log(triple(numsOne));

//2. Write a function that takes in an array of numbers and returns a new array of numbers less than 5. For example, given [4, 10, 8, 3], the function should return [4, 3].

function lessThanFive(array) {
  return array.filter((x) => x < 5);
}

console.log();
console.log("Problem 02");

var numsTwo = [4, 10, 8, 3];
console.log(lessThanFive(numsTwo));

//3. Write a function that takes an array of numbers and returns the sum of all the numbers. For example, given [3, 9, 1], the function should return 13.

function sumOfArray(array) {
  return array.reduce((x, sum) => (sum += x));
}

console.log();
console.log("Problem 03");

var numsThree = [3, 9, 1];
console.log(sumOfArray(numsThree));

//4. Write a function that takes in an array of strings and returns all the strings combined into a single string. For example, given ["a", "b", "c"], the function should return "abc".

function combineStrings(array) {
  return array.join("");
}

console.log();
console.log("Problem 04");

var strs = ["a", "b", "c"];
console.log(combineStrings(strs));

//5. Write a function to solve FizzBuzz (print out the numbers 1 through 100, except multiples of 3 print "Fizz", multiples of 5 print "Buzz", and multiples of 15 print "FizzBuzz").

function fizzBuzz() {
  for (i = 1; i < 101; i++) {
    if (i % 15 == 0) console.log("FizzBuzz");
    else if (i % 3 == 0) console.log("Fizz");
    else if (i % 5 == 0) console.log("Buzz");
    else console.log(i);
  }
}

console.log();
console.log("Problem 05");

fizzBuzz();

//6. Write a function that prints the lyrics to 99 Bottles of Beer.

function beersOnTheWall() {
  for (i = 99; i >= 0; i--) {
    if (i > 2) {
      console.log(`${i} bottles of beer on the wall, ${i} bottles of beer.`);
      console.log(`Take one down and pass it around, ${i - 1} bottles of beer on the wall.`);
      console.log();
    } else if (i > 1) {
      console.log(`${i} bottles of beer on the wall, ${i} bottles of beer.`);
      console.log(`Take one down and pass it around, #{i - 1} bottle of beer on the wall.`);
      console.log();
    } else if (i > 0) {
      console.log(`${i} bottle of beer on the wall, ${i} bottle of beer.`);
      console.log(`Take one down and pass it around, no more bottles of beer on the wall.`);
      console.log();
    } else {
      console.log(`No more bottles of beer on the wall, no more bottles of beer.`);
      console.log(`Go to the store and buy some more, 99 bottles of beer on the wall.`);
      console.log();
    }
  }
}

console.log();
console.log("Problem 06");
beersOnTheWall();
