function add(a, b) {
    return a + b;
};

var sum = function(array) {
  var total = array.reduce(add, 0);
  return total;
};


console.log(sum(oddLengthArray))
console.log(sum(evenLengthArray))

var mean = function(array) {
  var average = sum(array) / array.length;
  return average;
};

console.log(mean(oddLengthArray))
console.log(mean(evenLengthArray))

