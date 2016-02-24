# Your Names
# 1) Emily Osowski
# 2) Sydney Rossman-Reich

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

# Defining our serving size calculator method

def serving_size_calc(item_to_make, servings_of_item_to_make)

# Defining our library of baked goods we can make

  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

# Raises error if trying to bake item not in library

  raise ArgumentError.new("{item_to_make} is not a valid input") unless library.has_key?(item_to_make)


# Pulling the serving size at the item being baked

  serving_size = library[item_to_make]

# Remaining servings

  remaining_servings = servings_of_item_to_make % serving_size

# Feature

  if remaining_servings == 6
    extra_item = "1 cake and 1 cookie"
  elsif remaining_servings == 5
    extra_item = "1 cake"
  else
    extra_item = "#{remaining_servings} cookie(s)"
  end


# Output statements

  if remaining_servings == 0

# So if no extra servings, then print statement saying how many of the item you've made

    return "Calculations complete: Make #{servings_of_item_to_make / serving_size} of #{item_to_make}"

# If extra servings, print number of items and however many remaining servings + the TODO item

  else
    return "Calculations complete: Make #{servings_of_item_to_make / serving_size} of #{item_to_make}, you have #{remaining_servings} leftover ingredients. Suggested baking items: #{extra_item}"
  end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 12)
p serving_size_calc("THIS IS AN ERROR", 5)


=begin
#  Reflection

What did you learn about making code readable by working on this challenge?

This challenge really emphasized for me the importance of making code more readable. I could not figure out what was going on with the way things were, but I knew what they were trying to do. By refactoring and cleaning things up it is now much clearer how the method actually works.

Did you learn any new methods? What did you learn about them?

I learned that in the case of a hash .include? is actually .has_key? We used this determine if the hash had the item we needed.

What did you learn about accessing data in hashes?

Same as above :)

What concepts were solidified when working through this challenge?

I think this challenge was mainly beneficial to emphasize the importance of refactoring and how to make code more DRY.

=end





