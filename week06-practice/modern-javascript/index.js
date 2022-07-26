var moment = require("moment");
var chance = require("chance");
var chance = new Chance();

console.log("This is a test message");

var datetime = moment().startOf("day").fromNow();
console.log(datetime);

var test = chance.character();
console.log(test);

var para = chance.paragraph();
console.log(para);

var animals = chance.animal();
console.log(animals);

var a = 3;
var b = 2;

console.log(a + b);
