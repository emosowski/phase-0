
# input: String
# steps:
#Create a new hash
#Create a hash with default values at zero
#Print the hash #
#output: Hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# create method that takes item and quantity and adds them to the hash
# output: Hash with new item and quantity

# Method to remove an item from the list
# input: list, item name
# steps:
# removes inputted item from hash
# output: Hash - item removed

# Method to update the quantity of an item
#def update_quantity(value)
# input: value
# steps:
# update value of key
# output: Hash with updated value

# Method to print a list and make it look pretty
# def hash_to_string(hash)
# input: hash
# steps:
# convert hash to a string
# output: string

def create_new_list
  return Hash.new(0)
end

def add_item(empty_list, item, quantity)
  empty_list[item] = quantity
end

def remove_item(empty_list, item)
  empty_list.delete(item)
end

def update_quantity(empty_list, item, quantity)
  empty_list[item] = quantity
end

def print_list(empty_list)
empty_list.each { |item, quantity| puts "#{item}: #{quantity}" }
end



empty_list = create_new_list
puts empty_list
add_item(empty_list, "Lemonade", 2)
add_item(empty_list, "tomatoes", 3)
add_item(empty_list, "Onions", 1)
add_item(empty_list, "Ice Cream", 4)
puts empty_list
remove_item(empty_list, "Lemonade")
puts empty_list
update_quantity(empty_list, "Ice Cream", 1)
puts empty_list
print_list(empty_list)


=begin

1. What did you learn about pseudocode from working on this challenge?

This challenge reinforced the importance of pseudocode for me. It can feel overwhelming if you allow yourself to try to take on the challenge as a whole all at once. Breaking it down into small parts helps.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes allowed us to create a grocery list with items pointing to quantities. In an array, it would just have been a list of items and quantities.

3. What does a method return?

Every method in Ruby returns a value by default.This returned value will be the value of the last statement.

4. What kind of things can you pass into methods as arguments?

You can pass in an argument name (or multiple) or the argument name with a default vaulue.


5. How can you pass information between methods?

You can pass information between methods by setting a new variable equal to your previous method name. You can then use the name of the new variable as a parameter in your next method which passes it into the method.

6. What concepts were solidified in this challenge, and what concepts are still confusing?

I definitely got a better handle on passing variables between methods, but I need more practice.

=end



