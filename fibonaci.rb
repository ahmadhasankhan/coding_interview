def fib(n)
  fibs = [0,1]

  2.upto(n) do
    temp = fibs.last(2)
    fibs << temp.first + temp.last
  end
  fibs[0..n]
end

def fib2(n)
  a, b = 0, 1
  0.upto(n) do
    c = b + a
    a = b
    b = c
  end
end


def fibonacci(n)
  return n if (0..1).include? n
  fibonacci(n-1) + fibonacci(n-2)
end


def fib_seq(n)
  0.upto(n) do |i|
    result = fibonacci(i)
    puts result
  end
end

#p fibonacci(5)
fib_seq(5)

# def fib(n, fib_arr=[0,1,1])
#   fib_arr[n] ||= fib(n-2, fib_arr) + fib(n-1, fib_arr)
# end




# def fib(n)
#   n <= 1 ? n : fib(n - 1) + fib(n - 2)
# end

#p fib(5)



# def fibonacci5(n)
#   return if n < 0;
#   return 0 if n == 0;
#   return 1 if n == 1;
#
#   f = fibonacci(n-1) + fibonacci(n-2)
#   print f
#   f
# end
#
# fibonacci5(5)