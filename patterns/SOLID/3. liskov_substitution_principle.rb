# Subclasses should behave like their parent class.

class Bird
end

class FlyingBid < Bird
  def fly
    "Flying"
  end
end

class Penguin < Bird
end