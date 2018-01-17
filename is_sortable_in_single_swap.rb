def solution(a)
  size = a.size
  diff = 0
  temp_arr = a.sort

  #Check the number of different elements
  0.upto(size-1) do |i|
    if temp_arr[i] != a[i]
      diff += 1
    end
  end

  #If more than two elements are not equal then can't be sorted in single swap
  diff > 2 ? false : true
end

a = [1,5,3,3,7]
#a = [1, 2, 2, 5]
#a = [1, 3, 5, 3, 4]

p solution(a)