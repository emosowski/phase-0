# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Brian Donahue ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) New array of highest frequency number(s)
# What are the steps needed to solve the problem?
#create a new hash set default value to 0
# Iterate over array take each number turn it into a key
  #for each key increase by 1
# add highest frequency numbers to new array
  #count frequency of numbers
  # add highest frequency to array
# print new array



# 1. Initial Solution
 def mode(array)
    new_hash = Hash.new(0)
    array.each {|x| new_hash[x]+=1}
    frequent_array = []
    new_hash.each do |x, value|
      if value == new_hash.values.max
        frequent_array << x
      end
    end
    frequent_array
 end
puts mode([1, 2, 3, 4, 5, 5, 7])



# 3. Refactored Solution


def mode(array)
    new_hash = Hash.new(0)
    array.each {|x| new_hash[x]+=1}
    frequent_array = []
    new_hash.each do |x, value|
      if value == new_hash.values.max
        frequent_array << x
      end
    end
    frequent_array
 end

=begin 4. Reflection
Which data structure did you and your pair decide to implement and why?

We decided to create a new hash and then iterate through the array into the new hash. Once we figured out the highest frequency values we pushed them into a new array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I would say about the same.

What issues/successes did you run into when translating your pseudocode to code?

We ran into issues with the order in which we should count frequency and then iterate that into a new hash.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used:
each
values: Returns a new array populated with the values from hsh
max: Returns the object in enum with the maximum value
=end