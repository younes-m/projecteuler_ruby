"""
problem 21, Amicable numbers :

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
"""
start = Time.now

$pairs = {} # n => d(n)
$sum = 0


def d(n, divs_sum = 1)
  (2..n**0.5).each{|i| divs_sum += i + n/i if n%i == 0}
  $pairs[n] = divs_sum
  divs_sum
end

(1..10000).each do |n|
  dn = d(n)
  $sum += n + dn if dn != n and $pairs[dn] == n
end

puts $sum

finish = Time.now
puts finish - start
