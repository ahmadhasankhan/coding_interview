require './creature'
require_relative 'one'
require_relative 'two'
require_relative 'three'

class Human < Creature
  prepend Three
  extend Two
  include One

  def self.another
    puts "From Human class singleton"
  end

  def another
    puts "From Instance Method"
  end
end

# Aside from mixing the modules, we have an instance and class method.
# You can also see that the Human class is a subclass of the Creature class.

# First Lookup - Singleton Methods

# When we run Human.another, what gets printed is From Human class singleton, which is what we have in the class method.
# If we comment out the class method and run it again, it will print From two module to the console.
# This comes from the module we mixed in using extend. It goes to show that the lookup begins among singleton methods.
# If we remove (or comment out) extend Two and run the command again, this will throw a method missing error.
# We get this error because Ruby could not find the another method among the singleton methods.

n = Human.new

# def n.another
#   puts "From n object"
# end

n.another

p Human.ancestors