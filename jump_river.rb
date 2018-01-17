def solution(a, d)
  remaining = (a.size - 1) - d
  current_position = a[0]

  while remaining > 0 do
    remaining = remaining - a[current_position]
    current_position = a[current_position] + current_position
    if remaining < current_position
      return true
    end

    if a[current_position] == 0
      return false
    end
  end

  false
end

def next_step(current, tower)
  tower[current] + current
end



#arr = [1, 3, 5, 3, 1, 0]
arr = [ 3, 2, 1]
p solution(arr, 1)