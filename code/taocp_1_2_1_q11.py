def f(n):
    sum = 0
    for i in range(n):
        num = (-1)^i*(2*i+1)^3
        den = (2*i+1)^4 + 4
        sum += num/den
    return sum

for j in range(100):
    print(f(j))
