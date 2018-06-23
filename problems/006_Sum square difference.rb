"""
problem 6, Sum square difference :

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

"""

start = Time.now
N = 100

def sumSquares
  (1..N).map{|i| i**2}.sum
end

def squaresSum
  (1..N).sum ** 2
end

puts squaresSum - sumSquares


finish = Time.now
puts finish-start
