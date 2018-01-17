def longest_c_c(str)
  str = str.split('')
  count_hash = {}
  last_char = nil
  str.each do |s|
    if last_char == s
      count_hash[s] = count_hash[s]+1
    else
      count_hash[s] = 1
    end
    last_char = s
  end
  count_hash.max_by { |k, v| v }
end

s = "AABCDDBBBEA"

p longest_c_c(s)