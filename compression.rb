def compress(str)
  s = str
  n = s.length
  count=1
  i=0

  return "\0" if i==n

  while (i+1<=n && s[i]==s[i+1])
    count += 1
    i += 1
  end

  s = s[i] + to_string(count) + combine(s.substr(i+1, n-count))
  return s
end