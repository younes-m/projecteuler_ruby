"""
problem 27, Quadratic primes :

Euler discovered the remarkable quadratic formula:

n2+n+41

It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39
. However, when n=40,402+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,412+41+41

is clearly divisible by 41.

The incredible formula n2−79n+1601
was discovered, which produces 80 primes for the consecutive values 0≤n≤79

. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

    n2+an+b

, where |a|<1000 and |b|≤1000

where |n|
is the modulus/absolute value of n
e.g. |11|=11 and |−4|=4

Find the product of the coefficients, a
and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.
"""

start = Time.now

def isPrime?(n)
  return false if n <= 1
  (3..(n**0.5)).step(2).each{|i| return false if n%i == 0}
  true
end

def quadratic(a,b, n)
    n**2 + a*n + b
end

def primes_count(a, b, n=1, count=0)
    while isPrime?(quadratic(a,b,n))
      count += 1
      n += 1
    end
    if count > $max_primes
      $max_primes = count
      $result = a*b
      puts "a=#{a} b=#{b} #{count} primes first_result=#{(1**2) + a + b} second_result=#{2**2 + 2*a + b}"
    end
end


$max_primes = 0
$result = 0

N = 1000

((-1*(N-1))..(N - 1)).each do |a|
  (-N..N).each{|b| primes_count(a,b)}
end
puts $result


finish = Time.now
puts finish - start
