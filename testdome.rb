def solve(*args)
  a =  *args.first(3)
  b =  *args.last(3)

  results = {a: 0, b: 0}

  a.each_with_index do |d, i|
    if d > b[i]
      results[:a] += 1
    end

    if d < b[i]
      results[:b] += 1
    end
  end
  results.values
end

result = solve(10, 20, 30, 5, 5, 50)
print result.join(" ")
