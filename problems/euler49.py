"""
The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i)
each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one
other 4-digit increasing sequence.

What 12-digit number do you form by concatenating the three terms in this sequence?

"""

from collections import defaultdict


def is_prime(n):
    if n == 2:
        return True

    if n == 1 or n % 2 == 0 :
        return False

    for i in range(3, int(n**0.5)+1, 2):
        if n % i == 0:
            return False

    return True


def are_perms(n1, n2, n3):
    str_n1 = str(n1)
    str_n2 = str(n2)
    str_n3 = str(n3)

    set_n1 = set(str_n1)
    set_n2 = set(str_n2)
    set_n3 = set(str_n3)

    if set_n1 != set_n2 or set_n1 != set_n3 :
        return False

    for digit in str_n1:
        if not digit in str_n2 or not digit in str_n3 :
            return False

    return True


def find():
    for p1 in primes:
        for p2 in primes :
            if p2 >= p1:
                break

            p3 = p1 + (p1 - p2)
            if p3 in primes and are_perms(p1, p2, p3) :
                print("{0} {1} {2}".format(p2, p1, p3))


primes = defaultdict(int)
for i in range(1001, 10000, 2):
    if is_prime(i):
        primes[i]

find()