# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  n = str2.length
  a = str1[0...n]
  remaining = []
  if a != str2
    return ""
  end

  remaining = str1[n..-1]
  p "remaining #{remaining}"
  temp=""

  remaining.each_char do |s|
    temp << s
    p "s #{s}"
    p "temp #{temp}"
    p "temp.length == n #{temp.length == str1.length}"
    p "temp != str2 #{temp != str2}"
    if temp.length == str1.length && temp != str2
      return "Not Match"
    else
      temp = ""
    end
  end
end

str1 = "ABCDEF"
str2 = "ABC"
p gcd_of_strings(str1, str2)
