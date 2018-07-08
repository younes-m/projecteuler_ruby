"""
problem 31, Coin sums :

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

It is possible to make £2 in the following way:

    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

How many different ways can £2 be made using any number of coins?
"""

start = Time.now

OBJ = 200
$ways = 0

def two_pound_poss_brut_force(result = 0, way=[])
  if result == OBJ
    $ways += 1
  else
    COINS.each do |c|
      if way.last and c > way.last
        break
      elsif result + c <= OBJ
        two_pound_poss_brut_force(result + c, way + [c])
      end
    end
  end
end

COINS = [1, 2, 5, 10, 20, 50, 100, 200]

two_pound_poss_brut_force
puts $ways




finish = Time.now
puts finish - start
