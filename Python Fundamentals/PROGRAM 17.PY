import math
def sum_odd_series(n):
    sum_odd = 0
    for i in range(1, n+1, 2):  
        term = (i ** 2) / math.factorial(i)
        sum_odd += term
    return sum_odd
def sum_even_series(n):
    sum_even = 0
    for i in range(2, n+1, 2):
        term = (i ** 2) / math.factorial(i)
        sum_even += term
    return sum_even
n = 23
print("Sum of odd series up to", n, ":", sum_odd_series(n))
print("Sum of even series up to", n, ":", sum_even_series(n))