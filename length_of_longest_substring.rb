#https://leetcode.com/problems/longest-substring-without-repeating-characters/

def length_of_longest_substring(s)
  return 0 if s.nil? || s.empty?

  sub_strings = {}
  current_longest = 0
  s.each_char do |ch|
    p sub_strings
    if sub_strings.key?(ch)
      current_longest = current_longest < sub_strings.count ? sub_strings.count : current_longest
      sub_strings = {}
      sub_strings[ch] = 1
    else
      sub_strings[ch] = 1
      current_longest = sub_strings.count
    end
  end
  current_longest
end


#s = "pwwkew"
s = "dvdf"

p length_of_longest_substring(s)