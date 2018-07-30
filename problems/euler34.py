def factorial(n):
    return n * factorial(n - 1) if n > 1 else 1


def max_number():
    result = factorial(9)
    digits = 1
    while digits < len(str(result)):
        digits += 1
        result = factorial(9) * digits

    return result


def factorial_sum(n):
    sum = 0
    for d in str(n):
        sum += factorial(int(d))
        if sum > n:
            return 0

    return sum


max_n = max_number()
print(max_n)
for i in range(3, max_n):
    if i == factorial_sum(i):
        print(i)

