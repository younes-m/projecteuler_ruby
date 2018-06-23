"""
problem 7, 10001st prime :

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""

start = Time.now

N=10001

def isPrime?(n)
  (2..(n**0.5)).each{|i| return false if n%i == 0}
  true
end

def nthPrime(n=N,last=2)
  return last if n==0

  if last==2
    return nthPrime(n-2,3)
  else
    i=last+2
    while true
      return nthPrime(n-1,i) if isPrime?(i)
      i+=2
    end
  end
end

puts nthPrime

finish = Time.now
puts finish - start
