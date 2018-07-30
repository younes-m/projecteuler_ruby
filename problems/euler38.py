"""
Take the number 192 and multiply it by each of 1, 2, and 3:

    192 × 1 = 192
    192 × 2 = 384
    192 × 3 = 576

By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product
of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645,
which is the concatenated product of 9 and (1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with
(1,2, ... , n) where n > 1?

"""

def to_infinity(i=1):
    while True:
        yield i
        i += 1


def find_product(n, result=""):
    for i in to_infinity():
        result += str(i * n)
        if len(str(result)) >= 9:
            return int(result)



def is_pandigital(n):
    return len({d for d in str(n)}) == 9 and "0" not in str(n)


def find_max_product(max_n=0):
    for i in range(10000):
        if is_pandigital(find_product(i)):
            max_n = i
    return max_n


n = find_max_product()

print(n)
print(find_product(n))

