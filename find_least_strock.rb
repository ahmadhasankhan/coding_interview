# function solution(A) {
#   var strokesCount = 0;
#   var currStrokeHeight = 0;
#
#   for (var i = 0; i < A.length; i++) {
#       if (currStrokeHeight < A[i]) {
#           // next building is taller than our current stroke height
#       // add the difference between heights to strokesCount
#       strokesCount += A[i] - currStrokeHeight;
#
#       // edge case
#               if (strokesCount > 1000000000) {
#                   return -1;
#               }
#               }
#               currStrokeHeight = A[i];
#               }
#
#               return strokesCount;
#               }

def solution(a)
  strokesCount = 0
  currStrokeHeight = 0
  a.each do |val|
    if (currStrokeHeight < val)
      # next building is taller than our current stroke height
      # add the difference between heights to strokesCount
      strokesCount += val - currStrokeHeight
    end
    #Edge case
    if (strokesCount > 1000000000)
      return -1;
    end
    currStrokeHeight = val
  end
  strokesCount
end


#a = [1, 1,1,1,1,1,1]
a = [5,8]

p solution(a)