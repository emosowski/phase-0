#Attr Methods

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

# Pseudocode

# Input: call for new greeting
# Output: greeting with name
# Steps: create a class for Name Data, Create a class for Greetings, create an instance variable @name, initialize and instance of NameData in Greeting, include a method that displays a salutation to the console.

class NameData
  attr_reader :name
  def initialize
    @name = "Emily"
  end
end


class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    print "Hello "
    puts @namedata.name
  end
end

greet = Greetings.new
greet.hello


=begin
# Reflection

What is a reader method?

A reader method returns a value or state outside of the class, but does not change it. It reads and returns, the value of the instance variable with the same name as the method.

What is a writer method?

A writer method allows you to change the value of the variable outside of the class, but it is not readable.

What do the attr methods do for you?

  attr methods provide a built in shortcut that automatically creates a method that gives you access to an instance variable with the same name as the method (give or take the @)outside of the class. Messages go to self, the default object because there is no explicit reciever. So, the messages go to the class object.

Should you always use an accessor to cover your bases? Why or why not?

Although it might be tempting at first in these basic excercises, you should not awlays use accessor to cover your bases. Accessor can be used to return and change the value of the variable. If you use this as the default, down the line this can cause major problems in debugging and also security risks. You do not want all of your instance variables to be changeable. It is much better to keep your instance variables properly sorted with the appropriate attr method from the start.

What is confusing to you about these methods?

It is confusing to know which one to use and when.

Release 1

What are these methods doing?

These methods are creating access to the instance variables outside of the class and allowing for the info to be updated outside of the class.

How are they modifying or returning the value of instance variables?

To modify the value of the instance variables a new method is made to change the assignment of each instance variable. Then to return the value of the variables, you must call the initial methods and then the methods that update the info and also supply the updated info outside of the class.

Release 2

What changed between the last release and this release?

#age is now defined using the attr_reader method which allows you to access the instance variable @age outside of the class.

What was replaced?

The method what_is_age was removed and the method defined by the attr_reader replaces it (and does the same thing).

Is this code simpler than the last?

This code is a bit simpler as it saves us a couple of lines of repetition. Previously we created an entire method to make the instance variable @age available outside the class. Now thanks to use of attr_reader, @age is automatically available to be called outside of the class.

Release 3

What changed between the last release and this release?

In this release, :age is now defined as both a reader and writer method. This means that the instance variable @age can be read outside of the class, as well as changed outside of the class.

What was replaced?

The attr_writer of :age replaced the change_my_age method. We no longer need a completely separate method written out to allow for the value of instance variable @age to be changed outside of the class.

Is this code simpler than the last?

This code is a bit simpler as it saves us a few lines. It also makes it easier to see upfront that not only will the value of instance variable @age be able to be returned outside of the class, but you will also be able to change the value of the instance variable @age as well.

=end