def is_hoppable(arr, index)
  remaining = (arr.size - 1) - index
  current_position = arr[0]

  while remaining > 0 do
    remaining = remaining - arr[current_position]
    current_position = arr[current_position] + current_position
    if remaining < current_position
      return true
    end

    if arr[current_position] == 0
      return false
    end
  end

  false
end

def next_step(current, tower)
  tower[current] + current
end



arr = [1, 3, 5, 3, 1, 0]
p is_hoppable(arr, 0)




