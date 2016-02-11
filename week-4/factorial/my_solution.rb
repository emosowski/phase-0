
# Factorial

# I worked on this challenge [by myself, with: Lilian Ku ].
# take an input of an integer
# if input below zero return false
# if zero retun 1
# find out how many numbers in between
# we know a factorial is the product of integers from 1 to number

# Your Solution Below

def factorial(number)
  if number == 0
    1
  elsif number == 1
    1
  else number*factorial(number-1)
  end
end

