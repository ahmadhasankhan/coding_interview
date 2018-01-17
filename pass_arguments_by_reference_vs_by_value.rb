# x = 10
#
# def change_value(val)
#   val = 20
# end
#
# puts x # 10
# change_value(x)
# puts x # 10

# Value of x is still 10, even after the call to change_value.
# Seems like Ruby uses pass by value approach, right? Well,
#
# Consider this example:

#
# x = '10'
#
# def change_value(val)
#   val << '20'
# end
#
# puts x # 10
# change_value(x)
# puts x # 1020

# Value of x was changed by change_value method!
#
# Ok, to figure out what's going on we should understand how assignment works and how Ruby passes objects to methods.

# In Ruby, each object has unique object id, to get that id we can use object_id method:


# That explains why change_value doesn't change initial value:

x = 10

puts x.object_id # => 21

def change_value(val)
  puts val.object_id # => 21. Still referencing the same value
  val = 20
  puts val.object_id # => 41. Referencing another value, not related to `x`
end

change_value(x)