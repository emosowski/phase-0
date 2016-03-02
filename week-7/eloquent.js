// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Emily";
console.log(name + " Osowski")

//prompt("What is your favorite food?")
//console.log("Hey! That's my favorite too!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle

var number = "#";
while (number.length <= 7) {
  console.log(number);
  number += "#";
}

//FizzBuzz

for (var i = 1; i <= 100; i++) {
  var f = i % 3 == 0, b = i % 5 == 0;
  console.log(f ? b ? "FizzBuzz" : "Fizz" : b ? "Buzz" : i);
}

// Functions

// Complete the `minimum` exercise.

function min(a,b) { if (a < b) console.log(a); else console.log(b); }

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Emily", 26, "kale", "carrots", "beets", "I love to cook"]