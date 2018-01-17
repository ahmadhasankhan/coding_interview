# Write an algorithm such that if an element in an MxN matrix is 0, its entire row and
#     column are set to 0.

def set_zero(matrix)
  row = []
  column = []

  #Store the row and column index with value 0
  (0...matrix.size).each do |i|
    (0...matrix.first.size).each do |j|
      if (matrix[i][j] == 0)
        row[i] = true
        column[j] = true
      end
    end
  end

  # Set arr[i][j] to 0 if either row i or column j has a 0
  (0...matrix.size).each do |i|
    (0...matrix.first.size).each do |j|
      if (row[i] == true || column[j] == true)
        matrix[i][j] = 0
      end
    end
  end
  p matrix
end


matrix = [[0,2,3], [4,0,6], [7,8,9]]

set_zero(matrix)