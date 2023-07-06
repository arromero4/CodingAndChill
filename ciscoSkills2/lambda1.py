'''
The lambda function
The lambda function is a concept borrowed from mathematics, more specifically, from a part called the Lambda calculus, but these two phenomena are not the same.

Mathematicians use the Lambda calculus in many formal systems connected with logic, recursion, or theorem provability. Programmers use the lambda function to simplify the code, to make it clearer and easier to understand.

A lambda function is a function without a name (you can also call it an anonymous function). Of course, such a statement immediately raises the question: how do you use anything that cannot be identified?

Fortunately, it's not a problem, as you can name such a function if you really need, but, in fact, in many cases the lambda function can exist and work while remaining fully incognito.

The declaration of the lambda function doesn't resemble a normal function declaration in any way - see for yourself:

lambda parameters: expression
 

Such a clause returns the value of the expression when taking into account the current value of the current lambda argument.

As usual, an example will be helpful. Our example uses three lambda functions, but gives them names. Look at it carefully:
'''
two = lambda: 2
sqr = lambda x: x * x
pwr = lambda x, y: x ** y
 
for a in range(-2, 3):
    
    print(sqr(a), end=" ")
    print(pwr(a, two()), two(), end=" ")
    print(a)
 






















