#Object approch
class Stack:  # Defining the Stack class.
    def __init__(self):  # Defining the constructor function.
        self.__stack_list = []


stack_object = Stack()  # Instantiating the object.
print(len(stack_object.stack_list))