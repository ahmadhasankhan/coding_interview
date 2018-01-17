# def two_sum(nums, target)
#   nums.each_with_index do |ival, i|
#     nums.each_with_index do |jval, j|
#       next if j == i
#       if ival + jval == target
#         return [i, j]
#       end
#     end
#   end
#   nil
# end

def two_sum(nums, target)
  nums_hash = {}
  nums.each_with_index do |val, i|
    nums_hash[val] = i
  end

  nums.each_with_index do |ival, i|
    complement = target - ival
    next if nums_hash[complement] == i
    if nums_hash.key?(complement)
      return [i, nums_hash[complement]]
    end
  end
  []
end

nums = [2, 7, 11, 15]
target = 17

p two_sum(nums, target)

