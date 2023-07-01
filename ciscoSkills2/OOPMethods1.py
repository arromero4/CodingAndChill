class Classy:
    def method(self, par):
        print("method:", par)
 
 
obj = Classy()
obj.method(1)
obj.method(2)
obj.method(3)
 

 #example 2
 #The self parameter is used to obtain access to the object's instance and class variables.


class Classy:
    varia = 2
    def method(self):
        print(self.varia, self.var)
 
 
obj = Classy()
obj.var = 3
obj.method()

#Examples 3
#The self parameter is also used to invoke other object/class methods from inside the class.
#Just like here:


class Classy:
    def other(self):
        print("other")
 
    def method(self):
        print("method")
        self.other()
 
 
obj = Classy()
obj.method()