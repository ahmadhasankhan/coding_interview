def mergeHighDefinitionIntervals(intervals)
  intervals.each_with_index do |interval, i|
    break if i
    if intervals[i+1].first > interval.first  && intervals[i+1].first < interval.last
      p "This is fall #{intervals[i+1]}"
    end
  end
end

intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
p mergeHighDefinitionIntervals(intervals)


