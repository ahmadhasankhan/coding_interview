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

# def two_sum(nums, target)
#   nums_hash = {}
#   nums.each_with_index do |val, i|
#     nums_hash[val] = i
#   end
#
#   nums.each_with_index do |ival, i|
#     complement = target - ival
#     next if nums_hash[complement] == i
#     if nums_hash.key?(complement)
#       return [i, nums_hash[complement]]
#     end
#   end
#   []
# end
#
# nums = [2, 7, 11, 15]
# target = 17
#
# p two_sum(nums, target)
#


# def two_sum(nums, target)
#   size = nums.size - 1
#   0.upto(size).each do |i|
#     i+1.upto(size) do |j|
#       p i
#       p j
#       if nums[i] + nums[j] == target
#         return [i, j]
#       end
#     end
#   end
# end
#
# nums = [3,2,4]
# target = 6
# p two_sum(nums, target)

def two_sum(nums, target)
  nums_hash = {}
  nums.each_with_index do |val, i|
    nums_hash[val] = i
  end

  p nums_hash

  nums.each_with_index do |ival, i|
    complement = target - ival
    next if nums_hash[complement] == i
    if nums_hash.key?(complement) == true
      return [i, nums_hash[complement]]
    end
  end
  []
end


nums = [2,7,11,15]
target = 9
p two_sum(nums, target)
