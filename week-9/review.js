
/*
PSEUDOCODE
INPUT: Empty Object
OUTPUT: Object
Create a new list
  -create a new empty object
Add an item with a quantity to the list
  -create a function addItem that takes in an object, item and quantity and adds the item and quantity to the object
Remove an item from the list
  -create a function removeItem that takes in an object and an item and removes the item and quantity from the object
Update quantities for items in your list
  -create a function updateItem that takes in an object, item and quantity and updates the quantity of that item in the object
Print the list (Consider how to make it look nice!)
  -create a function print list that takes in an object, goes through each property and value in the object and prints it nicely to the console
*/

//Initial Solution
/*
var createNewList = {};

function addItem(emptyList, item, quantity) {
  emptyList[item] = quantity;
};

function removeItem(emptyList, item) {
  delete emptyList[item];
};

function updateItem(emptyList, item, quantity) {
  emptyList[item] = quantity;
};

function printList(emptyList) {
  for(var index in emptyList) {
    console.log(index + ": " + emptyList[index]);
  };
};




var emptyList = createNewList;
console.log(emptyList);
addItem(emptyList, "Lemonade", 2);
addItem(emptyList, "Tomatoes", 3)
addItem(emptyList, "Onions", 1)
addItem(emptyList, "Ice Cream", 4)
console.log(emptyList);
removeItem(emptyList, "Lemonade")
console.log(emptyList);
updateItem(emptyList, "Ice Cream", 1);
console.log(emptyList);
printList(emptyList)

*/

// Refactored Solution

var emptyList = {};
//function for add and update item can be combined because they use the exact same code
function addUpdateItem(item, quantity) {
  emptyList[item] = quantity;
};

function removeItem(item) {
  delete emptyList[item];
};


function printList() {
  console.log("Grocery List");
  console.log("------------")
  for(var index in emptyList) {
    console.log(index + ": " + emptyList[index]);
  };
};


// do not need to set the empty list to another variable because in JavaScript can pass the emptyList between methods
console.log(emptyList);
addUpdateItem("Lemonade", 2);
addUpdateItem("Tomatoes", 3)
addUpdateItem("Onions", 1);
addUpdateItem("Ice Cream", 4);
console.log(emptyList);
removeItem("Lemonade");
console.log(emptyList);
addUpdateItem("Ice Cream", 1);
console.log(emptyList);
printList();



/* Reflection
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

This challenge reminded me that the passing of information in JavaScript is slightly easier than Ruby. I also was able to combine functions because the adding and updating of properties within an object in JavaScript can be accomplished with the same bit of code.

What was the most difficult part of this challenge?

Honestly, just remembering how to do things in JavaScript. Spent the end of last week on Ruby and switching back was super hard.

Did an array or object make more sense to use and why?

Object made the most sense similarly to how a hash made the most sense in the Ruby version of this excercise. When you have a list with items(properties) and quantities(values) it makes the most sense to use an object.
*/