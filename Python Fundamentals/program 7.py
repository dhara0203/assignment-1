def gcd(a, b):
    while b:
        a, b = b, a % b
    return a
num1 = 56
num2 = 76

print("The GCD of", num1, "and", num2, "is", gcd(num1, num2))