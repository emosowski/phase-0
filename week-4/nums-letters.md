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