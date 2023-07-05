'''
issubclass()
Python offers a function which is able to identify a relationship between two classes, and although its diagnosis isn't complex, it can check if a particular class is a subclass of any other class.

This is what it looks like:


issubclass(ClassOne, ClassTwo)
'''
class Vehicle:
    pass


class LandVehicle(Vehicle):
    pass


class TrackedVehicle(LandVehicle):
    pass


for cls1 in [Vehicle, LandVehicle, TrackedVehicle]:
    for cls2 in [Vehicle, LandVehicle, TrackedVehicle]:
        print(issubclass(cls1, cls2), end="\t")
    print()
    
'''
Let's make the result more readable:

↓ is a subclass of →	Vehicle	LandVehicle	TrackedVehicle
Vehicle	                True	False	False
LandVehicle	            True	True	False
TrackedVehicle	        True	True	True
'''