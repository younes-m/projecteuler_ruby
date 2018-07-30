
"""
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?

"""


def rotations(n):
    str_n = str(n)
    for i, d in enumerate(str(n)):
        yield(str_n[i:] + str_n[:i])





def is_prime(n):
    if n == 2:
        return True

    if n == 1 or n % 2 == 0 :
        return False

    for i in range(3, int(n**0.5)+1, 2):
        if n % i == 0:
            return False

    return True


def contains_even(n):
    str_n = str(n)
    for i in range(0, 10, 2):
        if str(i) in str_n:
            return True
    return False




def circular_prime(n):
    for r in rotations(str(n)):
        if not is_prime(int(r)):
            return False
    return True


for r in rotations(1349):
    print(r)

# =>
# 1349
# 3491
# 4913
# 9134