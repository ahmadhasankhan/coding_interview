def add_no_arithm(a, b)
  return a if (b == 0)
   p sum = a ^ b # add without carrying
   p carry = (a & b) << 1 # carry, but don’t add
  add_no_arithm(sum, carry) # recurse
end

p add_no_arithm(2, 3)

[1,2,3].uniq
