# Don’t force classes to implement methods they don’t use.


# Bad example:
module Worker
  def work; end
  def eat; end
end

class Robot
  include Worker

  def work
    "Working"
  end

  def eat
    raise "Robots don't eat"
  end
end

# Good example:

module Workable
  def work
  end
end

module Eatable
  def eat
  end
end

class Human
  include Worker
  include Eatable
end

class Robot
  include Worker
end