"""
problem 30, Digit fifth powers:

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

    1634 = 14 + 64 + 34 + 44
    8208 = 84 + 24 + 04 + 84
    9474 = 94 + 44 + 74 + 44

As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
"""
start = Time.now

POWER = 5 ;

def digit_powers(n)
  n.to_s.split("").each.map{|d| d.to_i ** POWER}.sum
end

def number_digits_powers(n)
  digit_powers(n).to_s.size
end

def find_digit_powers(size=3, result="")
  if result.length == size
    puts result
  else
    (1..9).each do |i|
      find_digit_powers(size, result+i.to_s)
    end
  end
end

def find_max_by_number_of_digits(number_digits, result="")
  return result if (result.size == number_digits)

  (0..8).each do |n|
    this_result = result + n.to_s
    next_result = result + (n+1).to_s
    if (number_digits_powers(this_result) == number_digits and number_digits_powers(next_result) == number_digits+1)
      return find_max_by_number_of_digits(number_digits, this_result)
    end
  end

  return find_max_by_number_of_digits(number_digits, result + "9")
end

def find_max_possible_value(i=3, max=0)
  loop do
    temp_max = digit_powers(find_max_by_number_of_digits(i))

    if (temp_max.to_s.size < i)
      return max
    else
      max = temp_max
    end
    i += 1
  end
end

result = 0
max = find_max_possible_value

(10..max).reverse_each do |n|
  if digit_powers(n) == n
    result += n
    puts n
  end
end

puts "total=#{result}"

finish = Time.now
puts finish - start
