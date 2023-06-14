"""
Sample functions: Factorials
Another function we're about to write is factorials. Do you remember how a factorial is defined?

0! = 1 (yes! it's true) 1! = 1 2! = 1 * 2 3! = 1 * 2 * 3 4! = 1 * 2 * 3 * 4 : : n! = 1 * 2 ** 3 * 4 * ... * n-1 * n

It's marked with an exclamation mark, and is equal to the product of all natural numbers from one up to its argument.

Let's write our code. We'll create a function and call it factorial_function. Here is the code:
"""
def factorial_function(n):
    if n < 0:
        return 0
    if n < 2:
        return 1
    product = 1
    for i in range(2, n + 1):
        product *= i
    return product

 
for n in range(1, 6): # testing
    print(n, factorial_function(n))
 