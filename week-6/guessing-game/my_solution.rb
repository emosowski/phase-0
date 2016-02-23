# Build a simple guessing game


# I worked on this challenge

# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: symbol and true or false
# Steps:
# define guess
# define solved?

# Initial Solution

class GuessingGame
  attr_reader :answer, :guess
  def initialize(answer)
    @answer = answer
  end
  def guess(x)
    @guess = x
    if x == @answer
      p :correct
    elsif x > @answer
      p :high
    elsif x < @answer
      p :low
    end
  end

  def solved?
    if @guess == @answer
      p true
    else
      p false
    end
  end
end


game = GuessingGame.new(10)
game.solved?
game.guess(15)
game.guess(10)
game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(x)
    @guess = x
    if x == @answer
      p :correct
    elsif x > @answer
      p :high
    elsif x < @answer
      p :low
    end
  end

  def solved?
    if @guess == @answer
      p true
    else
      p false
    end
  end
end


game = GuessingGame.new(10)
game.solved?
game.guess(15)
game.guess(10)
game.solved?


=begin

# Reflection

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables keep their value between method calls within the class. Instance methods have access to pretty much anything in the class. These characteristics and behaviors are representative of real-world objects because of this ability to maintain a value and to access each other.

When should you use instance variables? What do they do for you?

  You should use instance variables when you want the variable to keep its value between different method calls within a class. When you create and instance variable, each object has its own copy.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I was able to use flow control for both the guess method and the solved? method in this challenge. It allowed me to instruct the program how to flow depending on what guess was made. My only struggle had more to do with keeping instance variables straight, not so much with actual control flow set up.

=end