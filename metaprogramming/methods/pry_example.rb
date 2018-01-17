require "pry"
pry = Pry.new
pry.memory_size = 101
pry.memory_size # => 101
pry.quiet = true