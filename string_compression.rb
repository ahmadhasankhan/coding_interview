# Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).

def compress(str)
  str_arr = str.split('')
  compressed = []
  previous_char = nil
  counter = 1
  str_arr.each do |s|
    if previous_char.nil? || previous_char != s
      compressed << counter unless previous_char.nil?
      compressed << s
      counter = 1
      previous_char = s
    else
      previous_char = s
      counter += 1
    end
  end
  compressed << counter
  compressed = compressed.*''
  compressed.size >= str.size ? str : compressed
end

#s = 'aabcccccaaa'
s = 'aaabbccaa'

p compress(s)