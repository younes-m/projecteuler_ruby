tableau = [0]

i = 1
while len(tableau) < 1000001:
    tableau += [int(d) for d in str(i)]
    i += 1

print(tableau[1] * tableau[10] * tableau[100] * tableau[1000] * tableau[10000] * tableau[100000] * tableau[1000000])
