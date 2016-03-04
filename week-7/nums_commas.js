// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jackie Feminella.

// Pseudocode
//Input: Integer
//Output: Return a comma-separated integer as a string
//Create a function
//Convert integer to string
//Create an array out of it - Reverse the string
//Using indices, access every 3rd index
//Insert a comma
//Join array back to a string
//Reverse string
//Return string

// Initial Solution

function comma(integer) {
  var array = integer.toString().split('').reverse();
  for (var count = 3; count < array.length; count+=4)
    // console.log(array[count] + ",")
  array.splice(count, 0, ",");
  return array .reverse().join("")
};

console.log(comma(1000000))

// Refactored Solution

function comma(integer) {
  var array = integer.toString().split('').reverse();
  for (var count = 3; count < array.length; count+=4)
    // console.log(array[count] + ",")
  array.splice(count, 0, ",");
  return array .reverse().join("")
};

// Your Own Tests (OPTIONAL)





/* Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

We approached the problem in much the same way as we did in ruby. Overall approaching it from the perspective of JavaScript was pretty smooth, although getting it to actually return what we wanted took a bit of tinkering with format and syntax.

What did you learn about iterating over arrays in JavaScript?

I learned that you can access the index of the array and use it for the method splice to insert things into the array at a certain index.

What was different about solving this problem in JavaScript?

It is interesting using the for loop for so many purposes in Javascript. We also iterated over the array and then used splice to return a new array with the commas added, then joining this together. In ruby I created an empty array and pushed the elements 3 at a time into the new array. Then I joined them with a comma.

What built-in methods did you find to incorporate in your refactored solution?

We found toString and splice which let us easily convert an integer to a string and insert new characters into an array at a certain index respectively.
*/