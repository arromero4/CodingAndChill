'''
isinstance()
As you already know, an object is an incarnation of a class. This means that the object is like a cake baked using a recipe which is included inside the class.

This can bring up some important issues.

Let's assume that you've got a cake (e.g., as an argument passed to your function). You want to know what recipe has been used to make it. Why? Because you want to know what to expect from it, e.g., whether it contains nuts or not, which is crucial information to some people.

Similarly, it can be crucial if the object does have (or doesn't have) certain characteristics. In other words, whether it is an object of a certain class or not.

Such a fact could be detected by the function named isinstance()
isinstance(objectName, ClassName)
The function returns True if the object is an instance of the class, or False otherwise.
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