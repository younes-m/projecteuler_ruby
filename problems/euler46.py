"""
It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a
square.

9 = 7 + 2×12
15 = 7 + 2×22
21 = 3 + 2×32
25 = 7 + 2×32
27 = 19 + 2×22
33 = 31 + 2×12

It turns out that the conjecture was false.

What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

"""

# All odd integers which are not prime are odd composite numbers.


primes = set()


def is_prime(n):
    if n == 2:
        return True

    if n == 1 or n % 2 == 0:
        return False

    for d in range(3, int(n**0.5)+1, 2):
        if n % d == 0:
            return False

    return True


def counting_odds(i=3):
    while 1:
        yield i
        i += 2


def is_goldbachs(n):
    for prime in primes:
        rest = n - prime
        if ((rest // 2) ** 0.5).is_integer():
            return True
    return False


def find():
    for i in counting_odds():
        if is_prime(i):
            primes.add(i)
        elif not is_goldbachs(i):
            return i


print(find())
