def is_rotation(s1, s2)
  len = s1.length

  #Check if s1 and s2 are equal length and not empty
  if(len > 0 && len == s2.length)
    #concatinate s1 with itself
    s1s1 = s1 + s1
    is_substring(s1s1, s2)
  end
end

def is_substring(s1, s2)
  if s1.include? s2
    return 'Yes'
  end
  'No'
end

s1 = 'apple'
s2 = 'ppale'

p is_rotation(s1, s2)