# https://leetcode.com/problems/longest-common-prefix/submissions/?source=submission-ac
def longest_common_prefix(strs)
  return "" if strs.nil? || strs.empty? || strs[0].empty?

  first_set = strs[0]
  n = first_set.size
  return first_set[0] if strs.size == 1 && first_set.length == 1
  (0..n).each do |i|
    c = first_set[i]
    strs[1..-1].each do |s|
      if i >= s.length || s[i] != c
        return first_set[0...i]
      end
    end
  end
end

strs = %w[flower flow flight]

p longest_common_prefix(strs)