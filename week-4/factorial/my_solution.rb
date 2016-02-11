
# Factorial

# I worked on this challenge [by myself, with: Lilian Ku ].
# take an input of an integer
# if input below zero return false
# if zero retun 1
# find out how many numbers in between
# we know a factorial is the product of integers from 1 to number

# Your Solution Below

def factorial(number)
  sum = 1
  sum.upto(number) { |i| sum *= i}
sum
end

p factorial(5)
