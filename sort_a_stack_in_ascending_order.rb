class Stack
  attr_accessor :capacity
  attr_accessor :storage

  def initialize(capacity)
    @capacity = capacity
    @storage = Array.new
  end

  def push(value)
    raise 'Stack overflow: Stack is already full' if @storage.size >= @capacity
    @storage << value
  end

  def pop
    raise 'Stack underflow: Stack is blank' if @storage.size == 0
    @storage.pop
  end

  def top
    @storage.last
  end

  def empty?
    @storage.empty?
  end
end

def sort (s, order='asc')
  s2 = Stack.new(s.capacity)

  while !s.empty? do
    temp = s.pop

    while !s2.empty? && (order == 'dsc' ? s2.top < temp : s2.top > temp)
      s.push(s2.pop)
    end

    s2.push(temp)
  end
  s2.storage
end

s = Stack.new(10)

[3, 8, 1, 5, 4, 7, 6, 2, 10, 9].each do |i|
  s.push(i)
end

p sort s