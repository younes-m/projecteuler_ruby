"""
problem 15, Lattice paths :

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
"""

require 'set'


start = Time.now

GRID_SIZE = 20


def lattice_path_pathfinding(x=GRID_SIZE, y=GRID_SIZE)
  if x == 0 || y == 0
    $total += 1
  else
    lattice_path_pathfinding(x-1, y)
    lattice_path_pathfinding(x, y-1)
  end
end

def lattice_path_formula
  fact(GRID_SIZE*2)/(fact(GRID_SIZE)**2)

end

def fact(n)
  n == 1 ? 1 : n * fact(n-1)
end

$perms = Set.new
$total = 0

#lattice_path_pathfinding
puts $total

finish = Time.now
puts finish-start


start = Time.now

puts lattice_path_formula

finish = Time.now
puts finish - start
