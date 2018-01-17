# Assume you have a method isSubstring which checks if one word is a substring
# of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one
# call to isSubstring (e.g., "waterbottle" is a rotation of"erbottlewat").

# def isSubstring
#
# end

def solution(n)
  arr = n.to_s.split('')
  arr.delete('0')
  result = arr.to_a.permutation.map(&:join).map(&:to_i).uniq
  p result.size
end

n = 100
solution(n)