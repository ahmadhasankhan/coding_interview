# If you can change the value of a constant, how is a constant different from a
# variable? The one important difference has to do with their scope. The scope
# of constants follows its own special rules, as you can see in the example that
# follows.

module MyModule
  MyConstant = 'Outer constant'

  class MyClass
    MyConstant = 'Inner constant'
  end
end


module M
  class C
    X = 'a constant'
  end
  C::X # => "a constant"
end

p M::C::X

p M.constants