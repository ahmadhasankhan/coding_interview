# Find the smallest unsorted element and add it to the end of the sorted list
# Best case & worst case O(n2)

def selection_sort(arr)
  size = arr.size

  0.upto(size-1) do |i|
    smallest_one = i
    #Find the min value
    (i+1).upto(size-1) do |j|
      if (arr[j] < arr[smallest_one])
        smallest_one = j
      end
    end

    #Swap the elements
    arr[i], arr[smallest_one] = arr[smallest_one], arr[i]
  end
  arr
end

#a = [64, 25, 12, 22, 11]
a = [5, 2, 1, 3, 6, 4]

p selection_sort(a)