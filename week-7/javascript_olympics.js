 // JavaScript Olympics

// I paired with Wesley on this challenge.

// This challenge took me 1.5 hours.



// Bulk Up


var sarahHughes = {
  name: "Sarah Hughes",
  event: "Ladies' Singles"
};

var wesleyE = {
  name: "Wesley El-Amin",
  event: "100 Meter Dash"
};

var emilyO = {
  name: "Emily Osowski",
  event: "Curling"

};

var athletes = [sarahHughes, wesleyE, emilyO];

function win(athletes) {
  for(var count = 0; count < athletes.length; count++)
    console.log(athletes[count].name + " won the " + athletes[count].event + " event!");
};

win(athletes)



// Jumble your words

function reverse(string) {
  var array = string.split('').reverse().join('')
  console.log(array)
}
reverse("Emily")


// 2,4,6,8

function isEvenNumber(value) {
  return value % 2 === 0;
}

var evens = function(array) {
    console.log(array.filter(isEvenNumber));
};
evens([1, 7, 3, 8, 5, 2])


// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;

}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/* Reflection

What JavaScript knowledge did you solidify in this challenge?

This challenge gave me more practice iterating in JavaScript with for. I also learned how to use filter.

What are constructor functions?

Constructor functions are a way of defining methods and properties. The alternative is literal notation. Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script.

How are constructors different from Ruby classes (in your research)?

 When a constructor function is instantiated and then a change is made to that instance, it won't affect any other instances of that object. Whereas in ruby, if an instance in a class is changed, it can affect other instances within that class.

*/