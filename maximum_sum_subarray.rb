# Kadane's Algorithm to solve Maximum Sum Subarray problem
# At each index check the max sum comparing current with global

def max_sum_of_subarray(arr)
  current_max = global_max = arr.first
  array_size = arr.size

  (1..(array_size-1)).each do |i|
    current_max = [arr[i], current_max + arr[i]].max

    if current_max > global_max
      global_max = current_max
    end
  end

  global_max
end

a = [-2, 3, 2 , -1]
p max_sum_of_subarray(a)