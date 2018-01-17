# Question:
# Implement an algorithm to determine if a string has all unique characters.
# What if you can not use additional data structures?

def unique_characters?(chars)
  chars = chars.split('')
  char_tracker = {}
  chars.each do |char|
    return false if char_tracker[char]
    char_tracker[char] = 1
  end
  true
end


p unique_characters?('abcde')
p unique_characters?('aabcde')