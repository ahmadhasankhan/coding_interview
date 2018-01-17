# Write a function that takes a string and counts the occurance of every word

input = "Quick brown fox jumps over a brown fence"

# Prints the following
# quick 1
# brown 2
# ...

def how_many(srt)
  arr = srt.split(" ")
  count = {}

  #arr.map{ |s|  "#{s} #{arr.count s}" }

  # arr.each do |s|
  #   s.downcase!
  #   count[s] = count.key?(s) ? count[s]+1 : 1
  # end
end

p how_many(input)