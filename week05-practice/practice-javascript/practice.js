// Problem 1:
// Write a method that prints out every number from 1 to 100.
for (i = 1; i <= 100; i++) {
  console.log(i);
}

// Problem 2:
// Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

for (i = 1; i <= 100; i = i + 2) {
  console.log(i);
}

// Problem 3:
// Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

function array_func(array) {
  var counter = 0;
  for (let i = 0; i <= array.length; i++) {
    if (array[i] == 55) {
      counter++;
    }
  }
  console.log(counter);
}

array = [2, 3, 6, 8, 55, 12, 7, 55, 3, 55, 34];
array_func(array);

// Problem 4:
// Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string.
// For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

function awesomesauce(array) {
  newArray = [];
  array.forEach((i) => {
    newArray.push(i);
    newArray.push("awesomesauce");
  });
  newArray.pop();
  console.log(newArray);
}

array = ["a", "b", "c", "d", "e"];
awesomesauce(array);

// Problem 5:
// Start with the hash: item_amounts = {chair: 5, table: 2}
// Someone just bought two chairs. Change the hash such that the chair amount is 3.
// The final result should be: {chair: 3, table: 2}

var item_amounts = { chair: 5, table: 2 };
item_amounts["chair"] = 3;
console.log(item_amounts);

// Problem 6:
// Start with the hash: item_amounts = {chair: 5, table: 2}
// You received 7 desks to sell. Change the hash to include desks.
// The final result should be: {chair: 5, table: 2, desk: 7}

item_amounts["desk"] = 7;
console.log(item_amounts);

// Problem 7:
// Write a method that accepts a number and returns its factorial.
// For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

function factorial_func(num) {
  x = 1;
  for (i = num; i > 0; i--) {
    x = x * i;
  }
  console.log(x);
}

factorial_func(5);

// Problem 8:
// Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array.
// For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].

function combo_sum(array1, array2) {
  console.log(array1.map((array1, i) => [array1 + array2[i]]));
}

array1 = [1, 5, 10];
array2 = [100, 500, 1000];

combo_sum(array1, array2);
