# https://www.cs.usfca.edu/~galles/visualization/ComparisonSort.html
class Array
  def quick_sort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quick_sort, pivot, *right.quick_sort
  end
end


# a = [64, 25, 12, 22, 11]
# a = [5, 2, 1, 3, 6, 4]
a = [64, 34, 25, 12, 22, 11, 1]
# a = [1, 2, 3, 4, 5, 6]
p a.quick_sort