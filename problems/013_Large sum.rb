"""
problem 13, Large sum :

Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
(file)
"""

start = Time.now

def big_number_sum
  sum=0
  File.open('013_number.txt', 'r') do |handle|
    handle.each do |line|
      sum += line.delete("\n").to_i
    end
  end
  sum
end

puts big_number_sum.to_s[0..9]

finish = Time.now
puts finish-start
