# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.flatten!.map! {|x| p x + 5 }
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

final_array = []
array1 = []
array2 = []

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten!
startup_names.collect! { |element| element + "ly" }
p startup_names

final_array << startup_names[0]
array1 << startup_names[1] << startup_names[2]
p array1
array2 << startup_names[3] << startup_names[4]
p array2
array1 << array2
p array1
final_array << array1
p final_array



=begin
What are some general rules you can apply to nested arrays?

To access items in nested array you need to follow the path of the index numbers to get to the various elements.

What are some ways you can iterate over nested arrays?

You can iterate over nested arrays using enumerable methods like each and map. Flatten greatly aids this process by making everything into one array. You can then push the flattened array back into nested arrays.


Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used map to iterate over the array. We were already familiar with this. We decided this was a good option because it would easily allow us to add 5 to each element.
=end