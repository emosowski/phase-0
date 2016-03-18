

# Reverse Words


# I worked on this challenge with: Alana Farkas ].
# This challenge took me [#] hours.

# Pseudocode
#INPUT: sentence(string)
#OUTPUT: sentence with words reversed
#define a method that takes in a string
#define a variable array that is equal to the string split into an array
#IF the legnth of the string is zero return the string
#IF the lenth is greater than zero for each word reverse it
#join the array back into a string

=begin
# Initial Solution

def reverse_words(string)
array = string.split(" ")

 if string.length == 0
    return string
 end
 if array.length > 0
   array.map! { |word| word.reverse }
   p array.join(" ")
 end

end
=end


=begin
# Refactored Solution

def reverse_words(string)
array = string.split(" ")

  if string.length == 0
    return string
  elsif array.length > 0
   array.map! { |word| word.reverse }
   return array.join(" ")
 end

end
=end

# Reflection


# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [5] hours on this challenge.
=begin
# Pseudocode
-create a class that takes in a board array
-initialize the array so that it can be used throughout
-create a method horizontal that takes in the array
  -go through each of the nested arrays and
  IF the array equals an array of x's
  PRINT "BINGO!"
-create a method vertical that takes in the array
  -set and index counter to zero
  -create a new empty array to hold the index of 'x'
  -go through each array in the nested array based on the index counter and push the index number of 'x' into a new array
  -add 1 to the index counter
  -end the loop
  -IF the length of an array containing only the unique index numbers equals 1
    -PUT BINGO!
-create a method right_to_left that takes in the array
  -set an index counter to zero
  -create an empty index_array
  -go through each of the arrays by index counter for both the array and the element
  -push the element into index_array
  -add 1 to index counter
  -end the loop
  -IF index_array is equal to an array of 5 x's
    -PUT BINGO!
-create a method left_to_right
  -set an index counter to zero
  -set another index counter to four
  -create an empty index array
  -go through each array within the bingo array based on the index numbers
  -push each element into the index array
  -add 1 to the first counter and subtract 1 from the second counter
  -end the loop
  -IF index_array is equal to and array of 5 x's
    -PUT BINGO!

=end




# sample boards

 horizontal = [[47, 44, 71, 8, 88],
               ['x', 'x', 'x', 'x', 'x'],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]

 vertical = [[47, 44, 71, 'x', 88],
             [22, 69, 75, 'x', 73],
             [83, 85, 97, 'x', 57],
             [25, 31, 96, 'x', 51],
             [75, 70, 54, 'x', 83]]


 right_to_left = [['x', 44, 71, 8, 88],
                  [22, 'x', 75, 65, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 31, 96, 'x', 51],
                  [75, 70, 54, 80, 'x']]


 left_to_right = [[47, 44, 71, 8, 'x'],
                   [22, 69, 75, 'x', 73],
                   [83, 85, 'x', 89, 57],
                   [25, 'x', 96, 68, 51],
                   ['x', 70, 54, 80, 83]]

 #test to make sure that BingoScorer will return nothing when there are 5 x's, one in each row but it is NOT bingo
  test = [[47, 44, 71, 8, 'x'],
          [22, 69, 75, 'x', 73],
          ['x', 85, 56, 89, 57],
          [25, 'x', 96, 68, 51],
          ['x', 70, 54, 80, 83]]



=begin
# Initial Solution
class BingoScorer

  def initialize(board)
    @bingo_board = board
  end

  def check_horizontal
    @bingo_board.each do |sub_array|
      if sub_array == ['x', 'x', 'x', 'x', 'x']
        puts "BINGO!"
      end
    end
  end


  def check_vertical
  i = 0
  index_array = []
    @bingo_board.each do
      index_array << @bingo_board[i].index('x')
      i += 1
    end
    if index_array.uniq.length == 1
      puts "BINGO!"
    end
  end

  def check_right_to_left
    i = 0
    index_array = []
    @bingo_board.each do
    index_array << @bingo_board[i][i]
    i += 1
    end
    if index_array == ['x', 'x', 'x', 'x', 'x']
      puts "BINGO!"
    end
  end

  def check_left_to_right
    i = 0
    i2 = 4
    index_array = []
    @bingo_board.each do
      index_array << @bingo_board[i][i2]
      i += 1
      i2 -= 1
    end
    if index_array == ['x', 'x', 'x', 'x', 'x']
      puts "BINGO!"
    end
  end
end
=end




# Refactored Solution
#create the class
class BingoScorer
#create a board object everytime a new instance of the class is created
  def initialize(board)
    @bingo_board = board
  end
#checks to see if there is a horiztonal bingo by iterating through each array
  def check_horizontal
    @bingo_board.each do |sub_array|
      if sub_array == ['x', 'x', 'x', 'x', 'x']
        puts "BINGO!"
      end
    end
  end

#checks for a vertical bingo using an index counter by iterating through each array and looking for the index of 'x'
  def check_vertical
  i = 0
  index_array = []
    @bingo_board.each do
      index_array << @bingo_board[i].index('x')
      i += 1
    end
    if index_array.uniq.length == 1
      puts "BINGO!"
    end
  end
#checks for bingo by indexing each array and each element within the array with a counter
  def check_right_to_left
    i = 0
    index_array = []
    @bingo_board.each do
    index_array << @bingo_board[i][i]
    i += 1
    end
    if index_array == ['x', 'x', 'x', 'x', 'x']
      puts "BINGO!"
    end
  end
#checks for bingo by indexing each array and each element within the array with a counter
  def check_left_to_right
    i = 0
    i2 = 4
    index_array = []
    @bingo_board.each do
      index_array << @bingo_board[i][i2]
      i += 1
      i2 -= 1
    end
    if index_array == ['x', 'x', 'x', 'x', 'x']
      puts "BINGO!"
    end
  end
end



# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

new_game = BingoScorer.new(vertical)
new_game.check_horizontal
new_game.check_vertical
new_game.check_right_to_left
new_game.check_left_to_right
# Reflection

=begin
What concepts did you review or learn in this challenge?

I reviewed how to iterate through a multidimensional array.

What is still confusing to you about Ruby?

I still have to put a lot of thought into iteration. It does not come naturally to me yet.
What are you going to study to get more prepared for Phase 1?

Iteration over various objects :)
=end