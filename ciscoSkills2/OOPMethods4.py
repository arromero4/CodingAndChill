'''
The inner life of classes and objects
Each Python class and each Python object is pre-equipped with a set of useful attributes which can be used to examine its capabilities
'''

class Classy:
    varia = 1
    def __init__(self):
        self.var = 2

    def method(self):
        pass

    def __hidden(self):
        pass

'''
If you want to find the class of a particular object, you can use a function named type(), which is able (among other things) to find a class which has been used to instantiate any object.
'''

print(Classy.__name__)
obj = Classy()
print(type(obj).__name__)
    

'''
__module__ is a string, too – it stores the name of the module which contains the definition of the class.


'''
print(Classy.__module__)
obj = Classy()
print(obj.__module__)


