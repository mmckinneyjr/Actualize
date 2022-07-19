// Task 1: Make middle earth
// To make middle earth, write a function called makeMiddleEarth that returns the string "Hello Middle Earth!".

// WRITE YOUR CODE HERE
function makeMiddleEarth() {
  return "Hello Middle Earth!";
}

// TESTING TASK 1
testMakeMiddleEarth();

// Task 2: Put hobbits on the map
// To add the hobbits to The Shire, write a function called takeAttendance that returns the length of the 'hobbits' array.

var hobbits = ["Frodo Baggins", "Samwise 'Sam' Gamgee", "Meriadoc 'Merry' Brandybuck", "Peregrin 'Pippin' Took"];

// WRITE YOUR CODE HERE
function takeAttendance() {
  return hobbits.length;
}

// TESTING TASK 2
testTakeAttendance(); 

// Task 3: Give Frodo the ring 
// To give Frodo the ring, write a function called keepSecret that takes in a string parameter and returns that string in all lower case. Hint: look up a JavaScript string method for this.

// WRITE YOUR CODE HERE
function keepSecret(string) {
  return string.toLowerCase();
}

// TESTING TASK 3
testKeepSecret();

// try clicking on the ring to hear something earsplitting!

// Task 4: Add your friends to Rivendell
// To add some friends in Rivendell, write a function called doubleParty that increases the partySize variable (provided below) 4 times using the increment operator, and then returns the partySize varible's new value. 
// Docs: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Increment

var partySize = 4;

// WRITE YOUR CODE HERE
function doubleParty() {
  partySize++;
  partySize++;
  partySize++;
  partySize++;
  return partySize;
}

// TESTING TASK 4
testDoubleParty();

// click on Strider to see a transformation!

// Task 5: Leave the Shire
// To move the hobbits to Rivendell, complete the travelAbroad function below. Write a loop (research the JavaScript forEach method) that goes through the shire array and for each hobbit do the following: First unshift each hobbit out of the shire array (docs: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift), and then push each hobbit into the rivendell array (docs: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push). Have the function return the rivendell array, which should now contain all the hobbits!

function travelAbroad() {
  var shire = ['Frodo Baggins', 'Samwise Gamgee', 'Merry Brandybuck', 'Pippin Took']
  var rivendell = []
  // WRITE YOUR CODE HERE
  shire.forEach(hobbit => {
    shire.unshift();
    rivendell.push(hobbit);
  })
  return rivendell;
}

// TESTING TASK 5
testTravelAbroad();

// Task 6: Forge the fellowship
// To forge the fellowship, write a function called declareAllegiance that takes in a member as a parameter (a string, such as 'Sam') and concatenates it into a string to return "I, Sam, am part of the fellowship!"

// WRITE YOUR CODE HERE
function declareAllegiance(member) {
  return "I, " + member + ", am part of the fellowship!";
}

// TESTING TASK 6
testDeclareAllegiance();

// click on Rivendell to hear a tune!

// Task 7: Fight the Balrog
// Read up on JavaScript string interpolation (known as template literals): https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Template_literals
// In the function below, create a variable called gandalf and set it equal to "Gandalf"
// Return a template literal with the gandalf variable interpolated 3 times into the string: "Gandalf the Grey says: You shall not pass! Gandalf the Grey is now Gandalf the white."

function slayTheBalrog() {
  // WRITE YOUR CODE HERE
  var gandalf = "Gandalf";
  return `${gandalf} the Grey says: You shall not pass! ${gandalf} the Grey is now ${gandalf} the white.`;
}

// TESTING TASK 7
testSlayTheBalrog();

// Task 8: Blow the Horn of Gondor
// Observe the function with the Boromir object below. Have the function return the value of calling the blowHorn function on boromir. Docs: https://www.w3schools.com/js/js_object_methods.asp

function blowTheHornOfGondor() {
  var boromir = {
    name: "Boromir",
    titles: ["Captain of the White Tower", "Captain-General", "High Warden of the White Tower"],
    realm: "Gondor",
    blownHorn: function() {
      return `${this.name} has blown the Horn of ${this.realm}!`;
    }
  };
  // WRITE YOUR CODE HERE
  return boromir.blownHorn();
}

// TESTING TASK 8
testBlowTheHornOfGondor();

// Task 9: Send Frodo and Sam to Mount Doom
// To send Frodo and Sam to Mount Doom, find Frodo's place in the fellowshipMembers array in the function below using the indexOf method: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf. Save that value to a variable called frodosPlace. Then, use the .splice method to remove and return 2 elements from the fellowshipMembers array (Frodo and Sam) starting at frodosPlace: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice. The splice method has a return value, you can use that as your function return!

function itsDangerousToGoAlone() {
  var fellowshipMembers = ['Gandalf the White', 'Legolas', 'Gimli', 'Aragorn', 'Frodo Baggins', 'Samwise Gamgee', 'Merry Brandybuck', 'Pippin Took']
  // WRITE YOUR CODE HERE
  var frodosPlace = fellowshipMembers.indexOf('Frodo Baggins');
  return fellowshipMembers.splice(frodosPlace, 2);
}

// TESTING TASK 9
testItsDangerousToGoAlone();

// Task 10: Gollum takes the ring
// To have Gollum take the ring, take a look at the code below and uncomment the noted lines to look at the console output. Then, read up on function scope and global scope here (you just need those 2): https://www.w3schools.com/js/js_scope.asp. Finally, fix the weWantsIt function to use the correct variable scope for the gollumHasRing variable so the global value changes to true.

var gollumHasRing = false;

function weWantsIt() {
  console.log("Gollum has attempted to take the Ring from Frodo!");
  gollumHasRing = true;
}

// UNCOMMENT THE FOLLOWING LINES
weWantsIt();
console.log(`gollumHasRing: ${gollumHasRing}`);

// TESTING TASK 10
testWeWantsIt();  


// Task 11: Vanquish Gollum and destroy the Ring
// To send Gollum and the Ring into the lava of Mount Doom, write a function called wrestleGollum. The function should use a for loop (docs: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Loops_and_iteration) to loop 5 times and increase a variable

// WRITE YOUR CODE HERE
function wrestleGollum() {
  var counter = 0;
  for (let i = 0; i < 5; i++) {
    counter++;
  }
  return counter;
}

// TESTING TASK 11
testWrestleGollum();

// Task 12: Send the hobbits back to the Shire
// To send the hobbits all back to the shire, complete the thereAndBackAgain function below. Use the .filter array method to get a filtered array of only hobbits using the hobbit key (note the array is now filled with objects!). Array filter documentation: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter. Then, loop through your filtered array of hobbits and change each one's location to 'The Shire'. Finally, return the array of filtered hobbits in their updated location.

function thereAndBackAgain() {
  var fellowshipMembers = [
    {name: 'Gandalf the White', hobbit: false, location: 'Rivendell'}, 
    {name: 'Legolas', hobbit: false, location: 'Rivendell'}, 
    {name: 'Gimli', hobbit: false, location: 'Rivendell'}, 
    {name: 'Aragorn', hobbit: false, location: 'Rivendell'}, 
    {name: 'Frodo Baggins', hobbit: true, location: 'Mordor'}, 
    {name: 'Samwise Gamgee', hobbit: true, location: 'Mordor'}, 
    {name: 'Merry Brandybuck', hobbit: true, location: 'Rivendell'}, 
    {name: 'Pippin Took', hobbit: true, location: 'Rivendell'}
  ];
  // WRITE YOUR CODE HERE
  var hobbits = fellowshipMembers.filter(member => member.hobbit);
  hobbits.forEach(hobbit => {
    hobbit.location = 'The Shire';
  });
  return hobbits;
}

// TESTING TASK 12
testThereAndBackAgain();