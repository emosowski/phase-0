What does puts do?

Puts simply writes on the screen whatever comes after it. For example Puts 1+2 is the same as Puts 3

What is an integer? What is a float?

An integer is a number without decimal points. A float is a number with decimal points.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Integer division always returns integer answers. This means that if the answer of division is not an integer, it will always be rounded down to a integer. Float division will return the exact float with decimal point and wont round it down to an integer. A good scenario to use integer division would be to determine how many movies you can see with a set amount of money. If you have $9 and movies cost $2 each, ruby would return 4, as you cannot partially pay for a movie.

```
p 24*365
p (8760*10)*60
```

How does Ruby handle addition, subtraction, multiplication, and division of numbers?

You can do all of these things in Ruby and it will provide an implicit return of the answer.

What are strings? Why and when would you use them?

A string is a group of letters. You can use them to do string arithmetic or to add various strings together to make a sentence. You can also multiply strings by a number to return multiples of that string.

What are local variables? Why and when would you use them?

Local variables are variables that only exist in the method. You use them within various methods because they do not do anything outside of the method. This prevents them from messing with other methods.

How was this challenge? Did you get a good review of some of the basics?

Yes this challenge gave me a good review of the basics. It also taught me the difference between integers and floats, and how that changes the answer when using division or modulo. I also learned the .to_f to force an integers into a float when using division and modulo.