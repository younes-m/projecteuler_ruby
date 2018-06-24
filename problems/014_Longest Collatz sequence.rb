"""
problem 14, Longest Collatz sequence :

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
"""

require 'set'

MAX = 1000000

#BRUTE FORCE METHOD
start = Time.now

#brut force = 8.9

start = Time.now

$known = Set.new

def collatz_count(n, c=1)
  $known << n if n < MAX
  return c if n==1
  return n%2 == 0 ? collatz_count(n/2,c+1) : collatz_count(3*n + 1, c+1)

end

def findLongest
  max_n = 0
  max_c = 0
  (1..MAX-1).reverse_each do |n|
    c = $known.include?(n) ? 0 : collatz_count(n)

    return max_n if $known.size == MAX-1
    #c = collatz_count(n)
    if c > max_c
      max_n = n
      max_c = c
    end
  end
end

puts findLongest

finish = Time.now
puts finish-start
