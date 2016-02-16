# Pad an Array

# I worked on this challenge with: Erica Lloyd

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, an integer to hold the minimum size, and an optional pad value
# What is the output? (i.e. What should the code return?)
# The original or the array with pad value inserted
# What are the steps needed to solve the problem?

# Test whether array length is < minimum
# WHILE array length is < minimum size
#   add pad value
# END WHILE
# p array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
      array.push(value)
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  pad_array = []
  array.each {|x| pad_array.push(x)}
  while pad_array.length < min_size
      pad_array.push(value)
  end
p pad_array
end



# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
    pad_array = Array.new(array)
  while pad_array.length < min_size
      pad_array.push(value)
  end
  p pad_array
end


=begin 4. Reflection
Were you successful in breaking the problem down into small steps?

Yes, we were able to break it down into smaller steps, which actually helped us realize we could do things even simpler than we initially thought.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Yes we were. The only thing we were unsure of at first was how the code needed to differ between the destructive method and the non destructive method. We first ran into errors trying to use the same code for both.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

We tried to use the same code for both methods at first which returned errors. We then realized we needed to set the initial array equal to a new array and do our method on that.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We were able to use the .each method to create a copy of the initial array.

How readable is your solution? Did you and your pair choose descriptive variable names?
What is the difference between destructive and non-destructive methods in your own words?

Our solution is pretty readable. We definitely could have chosen more descriptive variable names. The way we have it now, it could get confusing. Destructive methods change the object on which they are called. Non-destructive methods create a copy of the object on which they are called and perform the method on the copy. They do not alter the original object.
=end