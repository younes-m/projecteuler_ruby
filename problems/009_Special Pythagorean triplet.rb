"""
problem 9, Special Pythagorean triplet :

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

start = Time.now

def find_c_pyth(a, b)
  (a**2 + b**2) **0.5
end

def find_c_sum(a, b)
  1000 - (a+b)
end

def max_b(a)
  (1000-a)%2 == 0 ? (1000-a)/2 - 1 : (1000-a)/2
end


def specialPythagorean
  (1..997).each do |a|
    ((a+1)..(max_b(a))).each do |b|
      c = find_c_sum(a,b)
      return a*b*c if c == find_c_pyth(a,b)
    end
  end
end

puts specialPythagorean


finish = Time.now
puts finish-start
