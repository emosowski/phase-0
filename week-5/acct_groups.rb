# Pseudocode
# Input: string of names
# Output: Array of arrays
# Steps:
# 1. Turn string into an array
# 2. Split array into groups of four

=begin Initial Solution

def acct_groups(people)
  people.each_slice(4).to_a
end

# Driver Code
p acct_groups([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59])
=end

# Refactored Solution

def acct_groups
  (1..59).each_slice(4).to_a
end

# Driver Code
p acct_groups

=begin

What was the most interesting and most difficult part of this challenge?

It is definitely hard to go from having so much structure with the rspec file, to having very little structure. It took a bit to adjust to the fact that I had control on how I wanted this method to run.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Slowly, I still find it very hard not to start coding at the same time!

Was your approach for automating this task a good solution? What could have made it even better?

I think my approach is good.

What data structure did you decide to store the accountability groups in and why?

I stored them in an array of arrays. This worked well to break it down into groups of a certain size while also keeping it all together in one container.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I simplified it one step further by including the number range within the method and not using an argument. If I want to be able to use this for other sets of numbers, my initial solution is probably the better option.

=end