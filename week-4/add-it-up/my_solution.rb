# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Lilian Ku  ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array numbers
# Steps to solve the problem.
#get array numbers, convert to integers, add them together

# 1. total initial solution
def total(array)
  sum = 0
  array.each {|array| sum+=array }
  p sum
end
total([1,2,3])
# 3. total refactored solution


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings
# Output: combination of strings
# Steps to solve the problem.
# input of strings
# add them together
# 5. sentence_maker initial solution
def sentence_maker(array)
  array.join(' ').capitalize << "."
end
# 6. sentence_maker refactored solution

