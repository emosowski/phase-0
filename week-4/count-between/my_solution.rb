# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
list_of_integers.delete_if { |x| x < lower_bound || x > upper_bound }
return list_of_integers.count
end
list_of_integers = [12,15,29]
lower_bound = 16
upper_bound = 30
p count_between(list_of_integers, lower_bound, upper_bound)