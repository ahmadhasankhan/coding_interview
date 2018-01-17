module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

# This code refines the String class with a new to_alphanumeric method. Differently
# from a regular Open Class, however, a Refinement is not active by default. If
# you try to call String#to_alphanumeric, you’ll get an error:
# "my *1st* refinement!".to_alphanumeric
# ❮ NoMethodError: undefined method `to_alphanumeric' [...]
# To activate the changes, you have to do so explicitly, with the using method:
# using StringExtensions
# From the moment you call using, all the code in that Ruby source file will see
# the changes:
# "my *1st* refinement!".to_alphanumeric # => "my 1st refinement"

using StringExtensions

p "my *1st* refinement!".to_alphanumeric