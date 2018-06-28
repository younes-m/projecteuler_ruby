"""
problem 26, Reciprocal cycles :

A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

    1/2	= 	0.5
    1/3	= 	0.(3)
    1/4	= 	0.25
    1/5	= 	0.2
    1/6	= 	0.1(6)
    1/7	= 	0.(142857)
    1/8	= 	0.125
    1/9	= 	0.(1)
    1/10	= 	0.1

Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
"""

start = Time.now

$max_recurring_size = 0
$max_recurring_n = 0

def recurring_size(n)
  d = (10**10000)/n
  array_d = d.to_s.split("").reverse
  (1..array_d.size / 2).each do |i|
    if array_d[0,i] == array_d[i, i]
      $max_recurring_size, $max_recurring_n = array_d[0,i].size, n if (array_d[0,i].size > $max_recurring_size)
      break
    end
  end
end

(1..1000).each do |n|
  recurring_size(n)
end

puts "max_recurring_n=#{$max_recurring_n} max_recurring_size=#{$max_recurring_size} d=#{1.0/$max_recurring_n}"

finish = Time.now
puts finish - start
