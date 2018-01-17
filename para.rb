# h1 = {a:10, b:20, c:30}
# h2 = h1
#
# h1.delete(:a)
#
# puts h2



# fruits = ["orange", "apple", "banana", "pear", "grapes"]
#
# p fruits.sort! do | firstFruit, secondFruit |
#   secondFruit <=> firstFruit
# end




#
# def foo
#   lambda { return "1" }.call
#   return "2"
# end
#
# def bar
#   Proc.new { return "3" }.call
#   return "4"
# end
#
# print foo
# print bar



# arr = Array.new(5, 2)
# puts arr
# p arr.inject(10){|x,y| x+y}




# ANIMAL = 'Tiger'
#
# module Foo
#   ANIMAL = 'Python'
#   class Bar
#     def value1
#       print ANIMAL, " "
#     end
#   end
# end
#
# class Foo::Bar
#   def value2
#     print ANIMAL, " "
#   end
# end
#
# Foo::Bar.new.value1
# Foo::Bar.new.value2


# class Foo
#   attr_reader :value
#   def initialize(v)
#     value = v
#   end
#   def set_val(v)
#     @value = v
#   end
# end
#
# f = Foo.new(3)
# p f.value
# p " "
# f.set_val 5
# p f.value


# A ruby code snippet is given that helps display all possible pairs of integers (x,y) such that
# (a) both x and y are integers lying between 1 and 20, both inclusive
# (b) the sum of x and y is even
#
# However, certain keywords have been masked and replaced by KEYWORD1, KEYWORD2 and KEYWORD3 respectively. Your task is to identify what these keywords originally were.
#
#   The snippet (with keywords masked) is as follows:
#

# array = (1..20).map{|x|x}
# puts array.product(array).select{|x|x.reduce(:+)%2==0}


#What is the output of the following program?

# 3.times do |loop_num|
#   sum ||= 0
#   sum += 1
#   print sum, " "
# end
#
#
# for loop_num in 1..3
#   sum ||= 0
#   sum += 1
#   print sum, " "
# end


#What is the output of the following program?
#
# class MyClass
#   @one = 1
#   def do_something
#     @one = 2
#   end
#   def output
#     p @one
#   end
# end
# instance = MyClass.new
# instance.output
# instance.do_something
# instance.output

#What is the output of the following program?

# class Parent
#   @@value = 4
#   def self.value
#     @@value
#   end
#   def self.inc_value
#     @@value += 1
#   end
# end
#
# class Child < Parent
#   @@value = 87
# end
#
# puts Parent.value
# puts Parent.inc_value
# puts Child.value


# A university maintains data on students and departments in two tables: STUDENTS and DEPARTMENTS . Write a query to
# print the respective department name  and  number of students  majoring in each department for  all departments in the
# DEPARTMENTS end  table (even ones with no current students). Sort your results by descending number of students; if
# two or more departments have the same number of students, then sort those departments alphabetically byd epartment name
#
#
#                                                                                                 end

##SQL
# select d.DEPT_NAME, count(s.STUDENT_ID) as numberOfStudents
# from DEPARTMENTS d LEFT JOIN STUDENTS s on d.DEPT_ID = s.DEPT_ID
# group by d.DEPT_ID
# order by numberOfStudents desc, d.DEPT_NAME ;


