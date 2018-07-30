"""
If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?
"""

values = {}

for a in range(1, 400):
    for b in range(a, 401):
        c = (a**2 + b**2)**0.5
        if c.is_integer() and a + b + c <= 1000:
            if a + b + c in values:
                values[a + b + c] = values[a + b + c] + 1
            else:
                values[a + b + c] = 1


max_key = 0
for key in values:
    if max_key == 0 or values[key] > values[max_key]:
        max_key = key

print(max_key)

