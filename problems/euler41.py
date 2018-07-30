"""
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example,
2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?
"""


def is_prime(n):
    if n == 2:
        return True

    if n == 1 or n % 2 == 0 :
        return False

    for d in range(3, int(n**0.5)+1, 2):
        if n % d == 0:
            return False

    return True


def is_pandigital(n):
    for i in range(1, len(str(n)) + 1):
        if str(i) not in n:
            return False
    return True


def find_first(n="987654321", result=""):
    global max_prime
    if result != "" and is_pandigital(result) and is_prime(int(result)) and int(result) > max_prime:
        print(result)
        max_prime = int(result)

    for index, digit in enumerate(n):
        find_first(n[0:index] + n[index+1:], result + digit)


max_prime = 0
find_first()
print(max_prime)
