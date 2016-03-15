# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.
=begin
# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

#takes in a coded message, converts to all lowercase, splits coded message based upon each element and puts the coded message into an array split by each element.
#creates and empty array
#creates a hash cipher which contains key of coded letters and values of what those letters equal in english
def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

#iterate through each element of the input array
#set found_match to false so that if the conditions are met and it switches to true we can break the loop
#goes through each key in the cipher hash
# if an element(x) in input equals a key(y) cipher
#push the element cipher[index] into decoded sentence
#switch found match to true and break the loop
#elsif an element(x) in input equals any of these symbols push a space into decoded sentence
#switch found_match to true and break the loop
#elsif the array of integers 0 through 9 includes an element from input(x) push this element into decoded_sentece
#switch found_match to true and break the loop
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end
    end
#if found_match is not true push the input(x) into decoded sentece as is
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
#converting the array back to a string
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
end
=end
=begin
# Your Refactored Solution
def dr_evils_cipher(coded_message)
  input = coded_message.split("")
  decoded_sentence = []
  cipher = ('a'..'z').to_a
  other = ["@","#","$","%","^","&","*"]

input.each do |character|
  if cipher.include?(character)
    decoded_sentence << cipher[cipher.index(character)-4]
  elsif other.include?(character)
      decoded_sentence << " "
  else
      decoded_sentence << character
    end
  end

  decoded_sentence.join
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"
=end
=begin
# Reflection
# Keep your reflection limited to 10-15 minutes!

What concepts did you review or learn in this challenge?

This challenge gave me a good refresh on iterating through an array and working with the index numbers to access various elements.

What is still confusing to you about Ruby?

I really need to continue practicing iteration.

What are you going to study to get more prepared for Phase 1?

Generally I plan to really try to review the Ruby concepts we have covered thus far and then anything else I have time for like JavaScript and SQL.

=end

# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode


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



# Create a Playlist from Driver Code

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# Pseudocode



# Initial Solution




# Refactored Solution






# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection