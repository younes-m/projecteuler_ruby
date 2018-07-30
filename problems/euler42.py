"""
The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we
form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle
 number then we shall call the word a triangle word.

Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common
 English words, how many are triangle words?
"""


def score(w):
    return sum([abc_dic[l] for l in w])


def build_triangle_numbers(max_n, n=1):
    if max_n > 0:
        triangle_numbers.add(n * (n + 1) // 2)
        build_triangle_numbers(max_n-1, n+1)


triangle_numbers = set()
build_triangle_numbers(20)
triangle_words = 0

abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
abc_dic = {}
for index, letter in enumerate(abc):
    abc_dic[letter] = index + 1

with open("p042_words.txt", "r") as file:
    for line in file:
        for word in line.split(","):
            word = word.replace('"', "")
            if score(word) in triangle_numbers:
                print(word)
                triangle_words += 1

print(triangle_words)
