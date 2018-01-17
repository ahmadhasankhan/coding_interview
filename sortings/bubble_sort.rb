# Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.
# Worst and Average Case Time Complexity: O(n*n). Worst case occurs when array is reverse sorted.
# Best Case Time Complexity: O(n). Best case occurs when array is already sorted.
# Auxiliary Space: O(1)

def bubble_sort(arr)
  size = arr.size
  0.upto(size-1) do |i|
    swapped = false

    (0).upto(size-i-2) do |j|
      if arr[j] > arr[j+1]
        #Swap the elements
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end

    break unless swapped
  end
  arr
end

#a = [64, 25, 12, 22, 11]
#a = [5, 2, 1, 3, 6, 4]
a = [64, 34, 25, 12, 22, 11, 1]
#a = [1, 2, 3, 4, 5, 6]
p bubble_sort(a)