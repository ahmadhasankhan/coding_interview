# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
  result = ""
  n1 = word1.length
  n2 = word2.length
  n = [n1, n2].max
  0.upto(n-1).each do |i|
    if word1[i].nil?
      result << word2[i..-1]
      break
    elsif word2[i].nil?
      result << word1[i..-1]
      break
    else
      result << word1[i]
      result << word2[i]
    end
  end

  p result
end