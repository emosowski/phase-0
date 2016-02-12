puts "Hello, what is your name"
name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your name is " + name + " " + middle_name + " " + last_name + "!"

puts "What is your favorite number?"
number = gets.chomp
number = (number.to_i) + 1
puts "This number is bigger:" + " " + number.to_s

=begin

How do you define a local variable?
  First letter of the variable must be lowercase and you use = to define it.
How do you define a method?
  To define a method you use def method_name.
What is the difference between a local variable and a method?
  A method is a block of code and a local variable is a line of code that lives within a method. Methods can be used again whereas local variables only exist within their respective method.
How do you run a ruby program from the command line?
  You put ruby program_name
How do you run an RSpec file from the command line?
  You put rspec file_name
What was confusing about this material? What made sense?
  Overall this material made sense.

Address https://github.com/emosowski/phase-0/blob/master/week-4/address/my_solution.rb
Math https://github.com/emosowski/phase-0/blob/master/week-4/math/my_solution.rb

=end