def factorial(n):
    if n == 0 or n == 1: 
        return 1
    else:
        return n * factorial(n - 1)  
num = 7
if num < 0:
    print("Factorial is not defined for negative numbers.")
else:
    print(f"The factorial of {num} is {factorial(num)}")
