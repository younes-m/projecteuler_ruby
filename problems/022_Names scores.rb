"""
problem 22, Names scores :

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

"""

start = Time.now

def names
  File.open('022_names.txt', 'r') do |handle|
    handle.map{|line| line.delete('"').split(',')}[0]
  end
end

def score(name,index)
  name.split("").each.map{|l| $values[l]}.sum * index
end

$values = {}
("A".."Z").each_with_index do |l,i|
  $values[l] = i+1
end

puts names.sort.each_with_index.map{|name, index| score(name,index+1)}.sum

finish = Time.now
puts finish-start
