"""
problem 10, Summation of primes :

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

start = Time.now

N = 2000000

def isPrime?(n)
  (3..(n**0.5)).step(2).each{|i| return false if n%i == 0}
  true
end

def sumPrimes(i=3,last=3, sum=2)
  while i<N
    if isPrime?(i)
      sum+=i
      last=i
    end
    i+=2
  end
  return sum
end

puts sumPrimes

finish = Time.now
puts finish-start
