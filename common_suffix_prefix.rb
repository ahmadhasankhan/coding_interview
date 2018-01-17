def solution(s)
  sarr = s.size.times.map {|i| s[0..i]}
  p s
  rs = s.reverse
  rsarr = s.size.times.map {|i| p rs[0..i]}

  sarr.delete(s)
  rsarr.delete(s)

  #p sarr
  #p rsarr

  common = sarr & rsarr
  p common
  common ? common.size : 0
end

s = 'abbabba'
#s = 'codility'
str = s.size.times.map {|i| s[0..i]}

p solution(s)
