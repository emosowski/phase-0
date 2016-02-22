# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: a random string or ArgumentError
# Steps:
# 1. create a new class
# 2. define getter and setter methods
# 3. initialize labels with exception
# 4. define roll method
# 5. define sides method
# 6. call new die with certain sides
# 7. call sides
# 8. call roll


# Initial Solution
=begin
class Die
  attr_reader :labels, :sides, :roll
  def initialize(labels)
    if labels == []
      raise ArgumentError, "no empty list"
    else
      @labels = labels
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

die = Die.new(["a", "b", "c", "d"])
puts die.sides
puts die.roll
=end



# Refactored Solution

class Die
  attr_reader :sides, :roll
  def initialize(labels)
      raise ArgumentError, "no empty list" unless labels != []
      @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

die = Die.new(["a", "b", "c", "d"])
puts die.sides
puts die.roll





=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

In terms of implementation we needed to initialize a different argument labels instead of sides. We still needed to create the methods for sides and roll. Instead of the method sides simply returning the number input into the method, we now need to have sides count the number of items in an array. For this we use the length method on the array @labels. For roll, instead of using rand on an integer, we use sample on an array. Sample takes a random element from an array. When we enter driver code we must make sure to enter an array of strings.

What does this exercise teach you about making code that is easily changeable or modifiable?

This excercise reiterates the importance of making easily changeable code, as it saves a ton of time. It also shows the value of organizing objects with classes.

What new methods did you learn when working on this challenge, if any?

I learned sample which chooses a random element from an array.

What concepts about classes were you able to solidify in this challenge?

I was able to further cement the idea of instance variables and that they keep their value between method calls.
=end
