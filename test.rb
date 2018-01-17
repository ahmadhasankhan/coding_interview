# array = (1..20).map{|x|x}
# p array.product(array).select{|x|x.reduce(:+)%2==0}

# my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
#
# my_array.sort
#
# p my_array

# stuff = ["chocolate", :mint, "wall", :ball, "walters"]
#s = stuff.find_all do |word| word[0..1] == "wa" end

#s = stuff.select do |word| word[0..1] == "wa" end
#s = stuff.get do |word| word[0..1] === "wa" end
#
# s = stuff.obtain do |word| word[0..1] == "wa" end
# p s
#
# a = {a:10, b:20, c:30}
#
# b = a
#
# p a.delete(:a)
# p a
# p b

arr = [1, 2, 3, 4, 5]

#p arr.select{|i| i.even?}

# p arr.even?

#
# arr.map do |i|
#   p i+1
# end
#
# p arr

# arr = Array.new(5,2)
# p arr
# arr.inject(10) { |x,y| p x+y}

# row = ["a ", "b", "c", "d"]
#
# c = row.collect{ |r| r.upcase }
#
# p  c
#

# def divisible_by?(num)
#    -> input {(input % num).zero?}
# end
#
# def fizzbuzz_from(value)
#   Enumerator::Lazy.new(value..Float::INFINITY) do |yielder, val|
#     yielder << case val
#                  when divisible_by?(15)
#                    "FizzBuzz"
#                  when divisible_by?(3)
#                    "Fizz"
#                  when divisible_by?(5)
#                    "Buzz"
#                  else
#                    val
#                end
#   end
# end
#
# x = fizzbuzz_from(7)
# p x
# puts x.next
# puts x.next
#9.times { puts x.next }

#p [1,2,3,4,5,6,7,8,9].group_by.with_index {|_,index| index % 3}

#a = [1,2,3,4,5].inject(+)
# b = [4,5,6,7,8]
#
# p a | b

# class Student
#   def hello
#   end
# end
#
# hello

# class_eval, instance_eval
#
# a = [1,1,1,2,3]
#
# p a.count(2)




