"""
problem 17, Number letter counts

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
"""

DIC = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  1000 => "onethousand"
}

def word_written(n, result="")
  if DIC.include?(n)
    return result+DIC[n]
  end
  if n >= 100
    result = word_written(n/100) + "hundred"
    n%=100
    return n > 0 ? word_written(n, result+"and") : result
    if n>0
      result += "and"
      return word_written(n,result)
    end
  end

  if n > 10
    result += word_written(n/10*10)
  end
  return  result + word_written(n%10)
end

puts (1..1000).each.map{|n| word_written(n).size}.sum
