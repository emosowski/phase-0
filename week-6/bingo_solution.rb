# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [9] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

  -create method call
    letter = pick a random letter out of b, i, n, g, o
    number = pick a random number out of (1-100)
    convert number to string and combine

# Check the called column for the number called.
  #fill in the outline here
  -create method check
  -create a new empty array for each letter B I N G O
  -push numbers into new arrays by letter using indexes
  -go through each number and add letter
    convert to string
    add letter

# If the number is in the column, replace with an 'x'
  #fill in the outline here

  -compare call to board
    IF there is a match replace the board element with an 'x'
  -Remove letters
  -Push numbers back into correctly ordered arrays using index numbers

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

  -Format the board correctly
  -Print the board properly formatted
  -Print the board properly formatted with 'x' if there is a hit

=end
=begin
# Initial Solution

class BingoBoard
attr_reader :call, :check, :display
  def initialize(board)
    @bingo_board = board
  end


  def call
    letter = ["b", "i", "n", "g", "o"].sample
    number = rand(1..100).to_s
    call = letter + number
    @call = call
    p @call
  end

  def check
    b = []
    i = []
    n = []
    g = []
    o = []

    b << @bingo_board[0][0] << @bingo_board[1][0] << @bingo_board[2][0] << @bingo_board[3][0] << @bingo_board[4][0]
    i << @bingo_board[0][1] << @bingo_board[1][1] << @bingo_board[2][1] << @bingo_board[3][1] << @bingo_board[4][1]
    n << @bingo_board[0][2] << @bingo_board[1][2] << @bingo_board[2][2] << @bingo_board[3][2] << @bingo_board[4][2]
    g << @bingo_board[0][3] << @bingo_board[1][3] << @bingo_board[2][3] << @bingo_board[3][3] << @bingo_board[4][3]
    o << @bingo_board[0][4] << @bingo_board[1][4] << @bingo_board[2][4] << @bingo_board[3][4] << @bingo_board[4][4]

    b_number = b.map {|x| "b" + x.to_s }
    i_number = i.map {|x| "i" + x.to_s }
    n_number = n.map {|x| "n" + x.to_s }
    g_number = g.map {|x| "g" + x.to_s }
    o_number = o.map {|x| "o" + x.to_s }

    b_with_x = b_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    i_with_x = i_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    n_with_x = n_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    g_with_x = g_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    o_with_x = o_number.collect! { |element|
    (element == @call) ? "x" : element
    }

    #p b_with_x
    #p i_with_x
    #p n_with_x
    #p g_with_x
    #p o_with_x

    minus_b = b_with_x.map{ |element| element.gsub("b", '') }
    minus_i = i_with_x.map{ |element| element.gsub("i", '') }
    minus_n = n_with_x.map{ |element| element.gsub("n", '') }
    minus_g = g_with_x.map{ |element| element.gsub("g", '') }
    minus_o = o_with_x.map{ |element| element.gsub("o", '') }

    #p minus_b
    #p minus_i
    #p minus_n
    #p minus_g
    #p minus_o

  first_row = []
  second_row = []
  third_row = []
  fourth_row = []
  fith_row = []

  first_row << minus_b[0] << minus_i[0] << minus_n[0] << minus_g[0] << minus_o[0]
  second_row << minus_b[1] << minus_i[1] << minus_n[1] << minus_g[1] << minus_o[1]
  third_row << minus_b[2] << minus_i[2] << minus_n[2] << minus_g[2] << minus_o[2]
  fourth_row << minus_b[3] << minus_i[3] << minus_n[3] << minus_g[3] << minus_o[3]
  fith_row << minus_b[4] << minus_i[4] << minus_n[4] << minus_g[4] << minus_o[4]

  #p first_row
  #p second_row
  #p third_row
  #p fourth_row
  #p fith_row

  total_new_board = []
  header_array = ["b", "i", "n", "g", "o"]
  divider_array = ["--","--","--","--","--"]

  total_new_board << header_array << divider_array
  total_new_board << first_row << second_row << third_row << fourth_row << fith_row

  #p total_new_board

  final_board = []
  square = total_new_board.each do |row|
    row.each do |square|
    print square.center 4
    end
  puts
  end

  final_board << square
#  p final_board

end
end



=end

# Refactored Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ["b", "i", "n", "g", "o"].sample
    number = rand(1..100).to_s
    call = letter + number
    @call = call
    p @call
  end

  def check
    b,i,n,g,o = Array.new(5) { [] }

   b << @bingo_board[0][0] << @bingo_board[1][0] << @bingo_board[2][0] << @bingo_board[3][0] << @bingo_board[4][0]
   i << @bingo_board[0][1] << @bingo_board[1][1] << @bingo_board[2][1] << @bingo_board[3][1] << @bingo_board[4][1]
   n << @bingo_board[0][2] << @bingo_board[1][2] << @bingo_board[2][2] << @bingo_board[3][2] << @bingo_board[4][2]
   g << @bingo_board[0][3] << @bingo_board[1][3] << @bingo_board[2][3] << @bingo_board[3][3] << @bingo_board[4][3]
   o << @bingo_board[0][4] << @bingo_board[1][4] << @bingo_board[2][4] << @bingo_board[3][4] << @bingo_board[4][4]

    b_number = b.map {|x| "b" + x.to_s }
    i_number = i.map {|x| "i" + x.to_s }
    n_number = n.map {|x| "n" + x.to_s }
    g_number = g.map {|x| "g" + x.to_s }
    o_number = o.map {|x| "o" + x.to_s }

    b_with_x = b_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    i_with_x = i_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    n_with_x = n_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    g_with_x = g_number.collect! { |element|
    (element == @call) ? "x" : element
    }
    o_with_x = o_number.collect! { |element|
    (element == @call) ? "x" : element
    }

    minus_b = b_with_x.map{ |element| element.gsub("b", '') }
    minus_i = i_with_x.map{ |element| element.gsub("i", '') }
    minus_n = n_with_x.map{ |element| element.gsub("n", '') }
    minus_g = g_with_x.map{ |element| element.gsub("g", '') }
    minus_o = o_with_x.map{ |element| element.gsub("o", '') }

    first_row,second_row,third_row,fourth_row,fith_row = Array.new(5) { [] }

    first_row << minus_b[0] << minus_i[0] << minus_n[0] << minus_g[0] << minus_o[0]
    second_row << minus_b[1] << minus_i[1] << minus_n[1] << minus_g[1] << minus_o[1]
    third_row << minus_b[2] << minus_i[2] << minus_n[2] << minus_g[2] << minus_o[2]
    fourth_row << minus_b[3] << minus_i[3] << minus_n[3] << minus_g[3] << minus_o[3]
    fith_row << minus_b[4] << minus_i[4] << minus_n[4] << minus_g[4] << minus_o[4]

    total_new_board = []
    header_array = ["b", "i", "n", "g", "o"]
    divider_array = ["--","--","--","--","--"]

    total_new_board << header_array << divider_array
    total_new_board << first_row << second_row << third_row << fourth_row << fith_row

    final_board = total_new_board.each do |row|
      row.each do |square|
        print square.center 4
      end
      puts
    end

  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Pseudocoding this challenge was difficult for me because I was pretty unsure of how many conversions would be needed and how many new arrays would be necessary. My pseudocoding style is slowly improving.

What are the benefits of using a class for this challenge?

Using a class allowed me to use the call method I created that generates a random letter and number, in the check method so that it could be compared to the bingo board. The class let me use instance variables in this capacity and carry them through various metods in the class. I was also able to then call the methods outside of the class.

How can you access coordinates in a nested array?

To access coordinates in a nested array you must use both the index of the outer array and the index of the inner array and so on. It is basically like following a path. You have to access the outermost container first and then proceed from there.

What methods did you use to access and modify the array?

I used map to insert the letters into the arrays and convert the letter/number combos into strings.

I used collect! to check if the call matched any element on the board, and if so, replace it with an 'x'.

I then used map with gsub to remove the letters from the elements in the array.

Finally, I used center to determine the width of each column of the board to be displayed.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I used center to format the strings into a bingo board structure. Center's purpose is to set the width of string elements and pad the string if the width is longer than the string length.

How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?

I knew that the variable call would need to be carried into the next method, so I made call an instance variable. The variables within check could be local because they would not be needed outside of the method.

Mostly I just combined methods so that there is a bit less clutter. I would love to combine the pushing of arrays by index with an index range. I tried this multiple times and was not able to get it to work properly though, so I left them as individual push methods.

=end