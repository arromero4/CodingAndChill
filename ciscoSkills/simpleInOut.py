"""
Simple input and output
Scenario
Your task is to complete the code in order to evaluate the results of four basic arithmetic operations.

The results have to be printed to the console.

You may not be able to protect the code from a user who wants to divide by zero. That's okay, don't worry about it for now.

Test your code ‒ does it produce the results you expect?

We won't show you any test data ‒ that would be too simple.
"""
# input a float value for variable a here
a = float(input("input a float value for variable a: "))
# input a float value for variable b here
b = float(input("input a float value for variable b: "))
# output the result of addition here
print("the result of addition: "+str(a+b))
# output the result of subtraction here
print("the result of subtraction: "+str(a-b))
# output the result of multiplication here
print("the result of multiplication: "+str(a*b))
# output the result of division here
print("the result of division: "+str(a/b))
print("\nThat's all, folks!")
