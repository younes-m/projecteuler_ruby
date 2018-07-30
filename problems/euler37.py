"""

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left
to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37,
 and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

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


def truncatable_left_right(n):
    for i in range(1, len(str(n))):
        truncated_left = int(str(n)[i:])
        truncated_right = int(str(n)[:-i])
        if not is_prime(truncated_left) or not is_prime(truncated_right):
            return False
    return True


result = 0
sum = 0
i = 11
while result < 11:
    if is_prime(i) and truncatable_left_right(i):
        print(i)
        result += 1
        sum += i
    i += 2

print(sum)
