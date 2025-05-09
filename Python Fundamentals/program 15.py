def fibonacci(n):
    fib_series = []
    a, b = 0, 1
    for _ in range(n):
        fib_series.append(a)
        a, b = b, a + b
    return fib_series
n = 8
fib_list = fibonacci(n)
print("First few Fibonacci numbers are:", ", ".join(map(str, fib_list)))
