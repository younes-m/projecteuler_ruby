from functools import reduce
from fractions import Fraction


def compare(i, j):
    str_i = str(i)
    str_j = str(j)

    if int(str_j[1]) == 0 or str_i[1] != str_j[0]:
        return False

    r1 = float(str_i[0]) / float(str_j[1])
    r2 = float(i) / float(j)
    return r1 == r2


nums = []
dens = []
for i in range(10, 99):
    for j in range(i+1, 100):
        if compare(i, j):
            nums += [i]
            dens += [j]


nums_p = reduce((lambda x, y: x*y), nums)
dens_p = reduce((lambda x, y: x*y), dens)

print(Fraction(nums_p, dens_p))
