"""
problem 28, Number spiral diagonals :

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
"""

RIGHT = 0
DOWN = 1
LEFT = 2
UP = 3

start = Time.now

SPIRAL_SIZE = 1001

board =  (1..SPIRAL_SIZE).each.map{(1..SPIRAL_SIZE).each.map{ 0 }}

x = SPIRAL_SIZE/2
y = SPIRAL_SIZE/2
direction = UP

(1..SPIRAL_SIZE**2).each do |n|
  board[x][y] = n

  case direction
  when RIGHT
    x+=1
    direction = DOWN if board[x][y+1] == 0
  when DOWN
    y+=1
    direction = LEFT if board[x-1][y] == 0
  when LEFT
    x-=1
    direction = UP if board[x][y-1] == 0
  when UP
    y-= 1
    direction = RIGHT if board[x+1][y] == 0
  end
end

sum = -1
(0..SPIRAL_SIZE - 1).each do |i|
  sum += board[i][i]
  sum += board[SPIRAL_SIZE - 1 - i][i]
end

puts sum

finish = Time.now
puts finish - start
