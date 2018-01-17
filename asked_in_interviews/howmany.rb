# Write a function that takes a string and counts the occurance of every word

input = "Quick brown fox jumps over a brown fence"

# Prints the following
# quick 1
# brown 2
# ...

# def howmany(srt)
#   arr = srt.split(" ")
#   count = {}
#   arr.each do |s|
#     s.downcase!
#     count[s] = count.key?(s) ? count[s]+1 : 1
#   end
# end


def count_words(input)
  input.split(" ").group_by { |w| w.downcase }.each do |word,occurences|
    puts "#{word} #{occurences.size}"
  end
end

count_words(input)