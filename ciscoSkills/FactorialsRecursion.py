def factorial_function(n):
    if n < 0:
        return None
    if n < 2:
        return 1
    return n * factorial_function(n - 1)
 
for n in range(1, 6): # testing
    print(n, factorial_function(n))

# Recursive implementation of the factorial function.
 
def factorial(n):
    if n < 0:
        return 1
    if n == 1: # The base case (termination condition.)
        return 1
    else:
        return n * factorial(n - 1)
 
 
print(factorial(4)) # 4 * 3 * 2 * 1 = 24