# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error? errors.rb
#
# 2. What is the line number where the error occurs? 171
#
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# line 16
# 6. Why did the interpreter give you this error?
# The while loop contained in the cartman_hates method needs to be ended before the method is ended.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs? 36
#
# 2. What is the type of error message?
# undefined local variable or method `south_park' for main:Object
# 3. What additional information does the interpreter provide about this type of error?
# (NameError)
# 4. Where is the error in the code?
# 36
# 5. Why did the interpreter give you this error? The variable south_park has not been defined or assigned to anything.
#

# --- error -------------------------------------------------------

#def cartman()
#end
# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# undefined method `cartman' for main:Object
# 3. What additional information does the interpreter provide about this type of error?
# (NoMethodError)
# 4. Where is the error in the code?
# 51
# 5. Why did the interpreter give you this error?
# The method needed to be defined.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase

# 1. What is the line number where the error occurs? 66
#
# 2. What is the type of error message?
# wrong number of arguments (given 1, expected 0)
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase' (ArgumentError)
# 4. Where is the error in the code?
# in `cartmans_phrase' line 70
# 5. Why did the interpreter give you this error?
# The method is set up not to expect any arguments. Therefore, calling cartmans_phrase(argument) gives a wrong number of arguments error - you are giving it an argument but it is expecting 0.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# wrong number of arguments (given 0, expected 1) (ArgumentError)

# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says' from errors.rb:89:in `<main>'
# 4. Where is the error in the code?
# line 89
# 5. Why did the interpreter give you this error?
# The cartman_says method is set up to accept one argument. When cartman_says is called, there is no argument included.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie("A meteor the size of the earth is about to hit Wyoming!")

# 1. What is the line number where the error occurs? 107
#
# 2. What is the type of error message?
# wrong number of arguments (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# (given 1, expected 2)
# 4. Where is the error in the code?
# 111
# 5. Why did the interpreter give you this error?
# When cartmans_lie is called it is only given 1 argument, instead of two. When the method was defined, it included two paramaters and therefore would expect two arguments when called.

# --- error -------------------------------------------------------

5# * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum
# 4. Where is the error in the code?
# 126
# 5. Why did the interpreter give you this error?
# The string cannot be converted into an integer to perform the *

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# (ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# The end of 141
# 5. Why did the interpreter give you this error?
# Cannot divide by integer 0. You can however divide by float 0.0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

=begin 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# (LoadError)
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/Emily/temp/Phase0DB/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# 157 in the file name
# 5. Why did the interpreter give you this error?
# This is asking ruby to load the document cartmans_essay.md but that file does not exist.


# --- REFLECTION -------------------------------------------------------
Which error was the most difficult to read?
 I think they were all equally ok to read.

How did you figure out what the issue with the error was?
The error type gives you clues and then the additioanal information helps you determine exactly where the error is happening.

Were you able to determine why each error message happened based on the code?
Yes

When you encounter errors in your future code, what process will you follow to help you debug?
I will go through the message step by step, as instructed in the excercise.

=end