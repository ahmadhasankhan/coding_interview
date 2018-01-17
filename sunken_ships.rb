def solution(n, s, t)
  matrix = Array.new(n, Array.new(n))
  ships = s.split(',').map {|a| a.split(' ')}
  hits = t.split(' ')
  total_hit_count = 0
  total_sunken = 0

  ships.each_with_index do |ship, i|
    matrix[i][0] = ship.first
    matrix[i][ships.size-1] = ship.last
     #p matrix
    p ships.size-1
    #p ships.size-1
  end

  ships.each do |r|
    current_hit_count = 0
    r.each do |c|
      if hits.include?(c)
        current_hit_count += 1
      end

      if current_hit_count == r.size
        total_sunken += 1
        current_hit_count = 0
      end
    end
    total_hit_count += current_hit_count
  end

  puts "#{total_hit_count} , #{total_sunken}"
end


n = 4
s = "1B 2C, 2D 4D"

t = "2B 2D 3D 4D 4A"

solution(n, s, t)


# Example test:    (4, '1B 2C,2D 4D', '2B 2D 3D 4D 4A')
# WRONG ANSWER  (got 0,1 expected 1,1)
#
# Example test:    (3, '1A 1B,2C 2C', '1B')
# WRONG ANSWER  (got 1,0 expected 0,1)
#
# Example test:    (12, '1A 2A,12A 12A', '12A')
# WRONG ANSWER  (got 0,1 expected 1,0)

# kumar
# arkum
# Can string be found after Rorate array
# ahmad


# 2: stream of numbers

# Third largest








