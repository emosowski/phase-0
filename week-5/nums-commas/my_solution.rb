# Numbers to Commas Solo Challenge

# I spent [8 hours] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive Integer
# What is the output? (i.e. What should the code return?) comma separated string
# What are the steps needed to solve the problem?
# Convert integer to string
# Split string into substring array
# Reverse substring array
# Create a new empty array
# WHILE the array length is greater than 0
#   Push substring array 3 at a time into array
#   Join it into strings of 3
# Join it together as one string with commas
# Reverse it back



# 1. Initial Solution
def separate_comma(integer)
  integer_string = integer.to_s.split("").reverse
  array = []
  while integer_string.length > 0
    array << integer_string.shift(3).join
  end
  array.join(",").reverse
end
p separate_comma(2500000)




# 2. Refactored Solution
def separate_comma(integer)
  integer_string = integer.to_s.split("").reverse
  array = []
  while integer_string.length > 0
    array << integer_string.shift(3).join
  end
  array.join(",").reverse
end
p separate_comma(2500000)


=begin
# 3. Reflection
What was your process for breaking the problem down? What different approaches did you consider?

I considered many different approaches before figuring out one that worked. At first I thought perhaps I could work with a string the entire time, but I eventually realized that would not allow me to add more that one comma. Once I figured that out, I knew I was going to have to use arrays and then convert back into a string at the end.

Was your pseudocode effective in helping you build a successful initial solution?

My psuedocode was effective, however, I did quite a bit of changing my pseudocode as I went along as I realized various things would not work.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I had a hard time refactoring once I got a workable solution. It took me so long to get any solution that worked, and once I got there I couldn't come up with any additional way that worked. I used shift, which I haven't used before, to grab the chunks of 3 and push them into the new array.

How did you initially iterate through the data structure?

Initially I tried to use insert with a string, which didn't allow me to iterate. Once I realized I needed an array, I attempted to use length to insert a comma based on the length of the string. When this didn't work, I finally settled on shift to grab the strings and then join to put them together.

Do you feel your refactored solution is more readable than your initial solution? Why?

I think my solution is readable. I am unsure of a way to refactor to make it more readable at this point in time.

=end