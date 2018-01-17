# Assume you have a method isSubstring which checks if one word is a substring
# of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one
# call to isSubstring (e.g., "waterbottle" is a rotation of"erbottlewat").

def isSubstring
  scope :published_last_week, where('published_at >= ?', 1.week.ago)
end
