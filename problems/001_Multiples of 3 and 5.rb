
"""
problem 001, Multiples of 3 and 5 :

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
"""

MAX = 1000;
MIN = 3;

def dividable(i)
  i%3 == 0 or i%5 == 0
end

puts (MIN..MAX-1).each.select{|i| dividable(i)}.sum
