"""
problem 003, Largest prime factor :

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

"""

start = Time.now

N = 600851475143

def isPrime(n)
  (2..(n**0.5)).each{|i| return false if n%i == 0}
  true
end

def highestDiv(n)
  (2..n).each{|i| return n/i if n%i==0}
end

def largestPrimeFactor(n)
  isPrime(n) ? n : largestPrimeFactor(highestDiv(n))
end

puts largestPrimeFactor(N)


finish = Time.now
puts finish-start
