# There are three types of edits that can be performed on strings: insert a character,
# remove a character, or replace a character. Given two strings, write a function to check if they are
# one edit (or zero edits) away.

# EXAMPLE
# pale, ple -> true
# pales, pale -> true
# pale, bale -> true
# pale, bake -> false

def is_one_edit?(s1, s2)
  s1 = s1.split('')
  s2 = s2.split('')

  s2_hash = Hash[s2.zip Array.new(s2.size, 0)]

  miss_cout = 0
  s1.each do |i|
    unless s2_hash.key?(i)
      miss_cout += 1
    end
    return false if miss_cout > 1
  end
  true
end

# s1, s2 = 'pale', 'ple'
s1, s2 = 'pale,', 'bake'
p is_one_edit?(s1, s2)