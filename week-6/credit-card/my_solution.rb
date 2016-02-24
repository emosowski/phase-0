# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: range of integers
# Output: true false or error
# Steps:
# take range of integers as input
# check for proper length or execute argument error if not proper length
# turn range of integers into a string
  # convert to string
# use chars method to split individual string array elements
# iterate through array and end up with integers
  #iterate through array
  #convert to integers
  # reverse
  #use step method to double every other integer
  # convert each element to string
  # use chars method to break up into individual strings
  # iterate through again and covert back to array
# sum each element of the array
# check to see if element by ten
  # return true if true
  # return false if false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  attr_reader :card_digits

  def initialize(card_digits)
    @card_digits = card_digits
    raise ArgumentError.new() unless @card_digits.to_s.length == 16
  end

  def check_card
    string_card = @card_digits.to_s.chars.reverse
    string_card.map! {|string| string.to_i}
    doubled_card = string_card.map.with_index{|value,index| index % 2 == 0 ? value : value * 2 }
    split_array = doubled_card.join.chars.map(&:to_i)
    sum = split_array.inject(0){|sum,x| sum + x }
    if sum % 10 == 0
      return true
    else
      return false
    end
  end

end

my_card = CreditCard.new(1234567281234527)

p my_card.check_card

# Refactored Solution

class CreditCard

  attr_reader :card_digits

  def initialize(card_digits)
    @card_digits = card_digits
    raise ArgumentError.new() unless @card_digits.to_s.length == 16
  end

  def check_card
    string_card = @card_digits.to_s.chars.reverse.map! {|v| v.to_i}
    #Chained together first line of method with map! method to reduce repetition
    doubled_card = string_card.map.with_index{|v,i| i % 2 == 0 ? v : v * 2 }
    #Shortened parameter names to take up less space and ensured names were consistent
    sum = doubled_card.join.chars.map(&:to_i).inject(0){|sum,v| sum + v }

    if sum % 10 == 0
      true
    else
      false
    end
  end

end

my_card = CreditCard.new(1234567281234527)

p my_card.check_card





=begin
# Reflection

What was the most difficult part of this challenge for you and your pair?

This challenge had so many conversions needed! Keeping straight what type of object we needed/were currently using to determine possible methods was difficult.

What new methods did you find to help you when you refactored?

We didnt use any new methods but we used map and with index in a new way to iterate through every other element in an array.

What concepts or learnings were you able to solidify in this challenge?

This challenge really gave me a good review of which methods are possible with which objects. We were also able to string so many methods together which was cool to see in action.

=end