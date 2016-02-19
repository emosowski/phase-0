# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(i_want_pets)
  pets_sorted = i_want_pets.sort_by {|x| x.to_s}
end
p my_array_sorting_method(i_want_pets)




def my_hash_sorting_method(my_family_pets_ages)
   hash_sorted = my_family_pets_ages.sort_by {|x,y| y }
end
p my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# sort_by This method allowed me to sort the array and hash based on a comparison method I provided in the block, instead of using the <=>. sort_by only requires you to show it how to treat one item, and also allows you to convert objects within the block.
# to_s This method converts objects into strings
#
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
=begin
 I implemented sort_by which is a concise way to sort a method with a code block. It always takes a block, and only requires that you show it how to treat one item in the collection and then it figures out that you want to do the same thing to both items every time it compares a pair of objects. The code in the block is used to sort, instead of the <=>. This comes in handy when the objects being sorted are in different classes, such as in this situation where the array has both strings and integers to sort. By default, strings and integers don't know how to compare themselves to each other, so we must convert them first. I chose to convert them into strings with to_s method. Note that the elements in the output will be the same as the input, meaning that both strings and integers went in, and strings an integers will come out, despite the fact that I did the to_s conversion within the sort_by block. However, the new array is ordered as if they were all strings. For the hash, I also implemented sort_by and this time provided two arguments in the block to map the hash into, and then specified that I wanted it to sort by the value. This resulted in a new array filled with the key value pairs in order from smallest value to largest. Sort_by acted non-destructively on its own, so I did not need to take extra precaution to avoid this.
=end


# Release 3: Reflect!
#Share any tricks you used to find and decipher the Ruby Docs
# I like to identify the class I am working with and then go through the left side to see if anything sounds like it could be a good fit. Once I have chosen a method, I like to go to irb and test it out a bit to see it in action.

# What did you learn about researching and explaining your research to others?
# I learned that thouroughly explaining what the docs are communicating to someone else can be tricky. I think it is helpful to use other resources as well that go more in depth. Explaining my research to others actually has really helped me solidify the concepts.


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#



#
#
#