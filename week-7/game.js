 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Help the bunny find a carrot so that she can have a snack
// Goals: Collect 1 carrot, avoid the poison carrot
// Characters: Bunny
// Objects: Bunny(position, snack time), Carrot(position), Poison Carrot(position)
// Functions: moveUp, moveDown, moveRight, move Left

// Pseudocode
// Declare a bunny object that has the properties of position, snack time
// Add different methods to bunny to make it move up, down, right, left
//Declare carrot object and give it a position
//Move bunny along
//Check where bunny is compared to carrots
// If same position as carrot snack time is true
// If same position as the poison carrot, snack time is false and game over

/* Initial Code

var bunny = {
posX: 0,
posY: 0,
snackTime: false,


hop: function(direction) {
  if(direction === 'right'){
    bunny.posX +=5;
  }
  else if(direction === 'left'){
    bunny.posX -=5;
  }
  else if(direction === 'up'){
    bunny.posY += 5;
  }
  else if(direction === 'down'){
    bunny.posY -=5;
  }


console.log("The bunny hopped to " + bunny.posX + "," + bunny.posY);

if(bunny.posX === carrot.posX && bunny.posY === carrot.posY){
    bunny.snackTime = true;
    console.log("It's snack time! Yum!")}
else if(bunny.posX === poisonCarrot.posX && bunny.posY === poisonCarrot.posY){
    bunny.snackTime = false;
    console.log("This carrot is poisoned! Noooo!! Game over.")
}
else {
  console.log("Come on, i'm getting hungry!!")
}
}
};

var carrot = {
posX: 20,
posY: 5,
};

var poisonCarrot = {
posX: Math.floor((Math.random() * 10) + 1),
posY: Math.floor((Math.random() * 10) +1 )
};

bunny.hop('right')
bunny.hop('right')
bunny.hop('up')

//test objects
console.log(bunny)
console.log(carrot)
console.log(poisonCarrot)
*/
// Refactored Code

var bunny = {
posX: 0,
posY: 0,
snackTime: false,


hop: function(direction) {
  if(direction === 'right'){
    bunny.posX +=5;
  }
  else if(direction === 'left'){
    bunny.posX -=5;
  }
  else if(direction === 'up'){
    bunny.posY += 5;
  }
  else if(direction === 'down'){
    bunny.posY -=5;
  }


console.log("The bunny hopped to " + bunny.posX + "," + bunny.posY);

if(bunny.posX === carrot.posX && bunny.posY === carrot.posY){
    bunny.snackTime = true;
    console.log("It's snack time! Yum!")}
else if(bunny.posX === poisonCarrot.posX && bunny.posY === poisonCarrot.posY){
    bunny.snackTime = false;
    console.log("This carrot is poisoned! Noooo!! Game over.")
}
else {
  console.log("Come on, i'm getting hungry!!")
}
}
};

var carrot = {
posX: 20,
posY: 5,
};

var poisonCarrot = {
posX: Math.floor((Math.random() * 10) + 1),
posY: Math.floor((Math.random() * 10) +1 )
};

bunny.hop('right')
bunny.hop('right')
bunny.hop('up')




/* Reflection
//In the reflection section of your game.js file, answer the following questions:

What was the most difficult part of this challenge?

Honestly, just keeping the JavaScript syntax straight was a major challenge.

What did you learn about creating objects and functions that interact with one another?

I learned that passing things between functions is somewhat easy if you can get the syntax correct.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

I learned floor and random which allowed my poison carrot object to have a random location between 1 and 10 and for those numbers to be rounded down to the nearest integer.

How can you access and manipulate properties of objects?

You can access properties of objects by calling the object name.property You can create a new property with this method or alter the value of an existing one as well.

*/