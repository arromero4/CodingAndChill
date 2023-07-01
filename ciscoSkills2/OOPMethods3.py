# Everything we've said about property name mangling applies to method names, too – a method whose name starts with __ is (partially) hidden.

# The example shows this effect:


class Classy:
    def visible(self):
        print("visible")
 
    def __hidden(self):
        print("hidden")
 
 
obj = Classy()
obj.visible()
 
try:
    obj.__hidden()
except:
    print("failed")
 
obj._Classy__hidden()
 