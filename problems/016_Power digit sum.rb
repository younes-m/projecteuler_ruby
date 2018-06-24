"""
problem 16 Power digit sum

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
"""
start = Time.now

N = 2**1000

puts N.to_s.split("").map{|i| i.to_i}.reduce(:+)




finish = Time.now
puts finish-start
