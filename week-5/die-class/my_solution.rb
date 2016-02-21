# Die Class 1: Numeric

# I worked on this challenge [by myself

# I spent [4] hours on this challenge.

# 0. Pseudocode

# Input: integer or sides
# Output: random integer between number of sides OR argument error
# Steps:
# 1. Create Die class
# 2. initialize sides
# 3. Define side method
# 3. Define roll method


# 1. Initial Solution

=begin
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Cannot have less than one side")
    else
    @sides = sides
    end
  end

  def sides
   @sides
  end

  def roll
    rand(@sides) + 1
  end
end



die = Die.new(6)
puts die.sides
p die.roll
=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError, "Cannot have less than one side" unless sides > 0
  end

  def sides
   @sides
  end

  def roll
    rand(@sides) + 1
  end
end

die = Die.new(6)
puts die.sides
p die.roll



=begin
# 4. Reflection

What is an ArgumentError and why would you use one?

An ArgumentError is an exception class descended from Exception. Raising an exception means stopping normal execution of a program. By raising an exception you can resuce the program and allow control flow to handle it, instead of just exiting the program completely.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented rand. I was stuck with 1 error for quite some time until I realized it was because rand was returning 0 as a possible roll and not returning the number of sides as a possibility. rand was returning 0 through number of sides -1. Since the rolls needed to be 1..sides, I eventually figured out I needed to add the 1 to get all of the possible rolls.

What is a Ruby class?

A ruby class is a blueprint from which individual objects are created. A class is a combination of characteristics and functions.

Why would you use a Ruby class?

Classes are helpful because they allow you to group methods into bundles so that you can quickly create many objects that behave the same way. When using a class you can still add methods to individual objects, but you dont have to.

What is the difference between a local variable and an instance variable?

Local variable:
-defined in the method
- only available within the method in which they are defined
-they do not survive across method calls

Instance variable:
-enables individual objects to remember state
- Names always start with a single @
- Only visible to the object to which they belong
- When initialized in one method inside a class it can be used by any method defined within the class
-retains the value assigned to it even after the method in which it was initialized has terminated

Where can an instance variable be used?

Across methods within any instance or object.

=end