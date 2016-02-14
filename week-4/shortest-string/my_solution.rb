# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  shortest = nil
  list_of_words.each do |words|
    if shortest.nil? || shortest.length > words.length
      shortest = words
    end
  end
shortest
end
list_of_words = ["hi", "bye", "hello"]
p shortest_string(list_of_words)
