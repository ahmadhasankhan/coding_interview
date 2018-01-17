def max_subarray_product(arr)
  maxi = 1
  mini = 1
  result = 0

  arr.each do |i|
    temp_max =  maxi > 1 ? maxi : 1
    if (i > 0)
      maxi = temp_max*i
      mini *= i
    else
      maxi = mini*i
      mini = temp_max*i
    end
    result = maxi > result ? maxi : result
  end
  result
end

a = [6, -3, -10, 0, 2]

p maxsubarrayproduct(a)