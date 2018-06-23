"""
problem 5, Smallest multiple :

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

"""

start = Time.now

MAX = 20

def dividibleRef
  (2..MAX).reduce(:*)
end

def isAcceptable(n)
  (2..MAX).each{|i| return false if n%i != 0}
  true
end

def smallestAcceptable(n)
  (2..MAX).each do |i|
    return smallestAcceptable(n/i) if n%i == 0 and isAcceptable n/i
  end
  n
end

puts smallestAcceptable dividibleRef

finish = Time.now
puts finish - start
