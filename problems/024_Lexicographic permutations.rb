"""
problem 24, Lexicographic permutations :

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
"""

start = Time.now

N = "0123456789"
OBJ = 1000000

$sum = 0
$result = 0
def perms(n=N, result="")
  if result.size == N.size
    $sum += 1
    if $sum == OBJ
      $result = result
      return $result
    end
  else
    (0..n.size-1).each do |i|
      perms(n[0,i] + n[i+1,n.size-1], result+n[i]) if $sum < OBJ
    end
  end

  return $result if $sum == OBJ
end

puts perms

finish = Time.now
puts finish - start
