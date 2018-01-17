def is_unique(str)
  char_set = {}
  str.split('').each do |i|
    return false if (char_set[i])
    char_set[i] = true
  end
  true
end

p is_unique('ABCDEFD')

def is_unique2(str)
  ckecker = 0
  str.split('').each do |i|
    i - 'a'
    return false if (char_set[i])
    char_set[i] = true
  end
  true
end