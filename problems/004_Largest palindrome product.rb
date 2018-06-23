"""
problem 004, Largest palindrome product :

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

"""

start = Time.now

MAX = 999

def isPalindromic?(n)
  n.to_s == n.to_s.reverse
end

def highestPalindrome(a=MAX,highest=0)
  return highest if a.to_s.length < MAX.to_s.length

  (a..MAX).reverse_each do |n|
    return highestPalindrome(a-1, n*a) if isPalindromic?(n*a) and n*a>highest
  end
  highestPalindrome(a-1,highest)
end

puts highestPalindrome


finish = Time.now
puts finish-start
