'''
__bases__ is a tuple. The tuple contains classes (not class names) which are direct superclasses for the class.

The order is the same as that used inside the class definition.





Note: only classes have this attribute – objects don't.

We've defined a function named printbases(), designed to present the tuple's contents clearly.
'''

class SuperOne:
    pass


class SuperTwo:
    pass


class Sub(SuperOne, SuperTwo):
    pass


def printBases(cls):
    print('( ', end='')

    for x in cls.__bases__:
        print(x.__name__, end=' ')
    print(')')


printBases(SuperOne)
printBases(SuperTwo)
printBases(Sub)
    