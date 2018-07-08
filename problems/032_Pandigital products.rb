"""
problem 032, Pandigital products:


We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.
HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.
"""

start = Time.now

class Integer
  def dcount
    to_s.size
  end
end

def is9pandigital?(n)
  n_string = n.to_s
  ("1".."9").each{|i| return false unless n_string.include? i}
  n_string.size == 9
end

def is9pandigital_product?(i, j)
  is9pandigital? i.to_s + j.to_s + (i*j).to_s
end

def too_big?(i, j)
  i.dcount + j.dcount + (i*j).dcount > 9
end

def test(i)
  j = i
  until too_big?(i,j) do
    $products << i*j if is9pandigital_product?(i, j+=1)
  end
end

require 'set'
$products = Set.new

i = 1
until too_big?(i,1) do
  test i += 1
end

puts $products.sum

finish = Time.now
puts finish - start
