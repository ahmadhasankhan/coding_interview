# [super] - is used for overridden method call by the overriding method.
# using super will call the same method, but as defined in the superclass and give you the result.

class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move
    super + "by flying"
  end
end

puts Animal.new.move
# => I can move
puts Bird.new.move
# => I can move by flying