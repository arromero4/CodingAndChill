"""
Converting fuel consumption
A car's fuel consumption may be expressed in many different ways. For example, in Europe, it is shown as the amount of fuel consumed per 100 kilometers.

In the USA, it is shown as the number of miles traveled by a car using one gallon of fuel.

Your task is to write a pair of functions converting l/100km into mpg, and vice versa.

The functions:

are named liters_100km_to_miles_gallon and miles_gallon_to_liters_100km respectively;
take one argument (the value corresponding to their names)
Complete the code in the editor and run it to check whether your output is the same as ours.

Here is some information to help you:

1 American mile = 1609.344 metres;
1 American gallon = 3.785411784 litres.
Expected output:

60.31143162393162 
31.36194444444444 
23.52145833333333 
3.9007393587617467 
7.490910297239916 
10.009131205673757
"""

def liters_100km_to_miles_gallon(litres):
    #liters_100km_to_miles_gallon
    #litros y km a millas y galones
    #millas por galon
    gallons = litres / 3.785411784
    miles = 100 * 1000 / 1609.344
    return miles / gallons

def miles_gallon_to_liters_100km(miles):
    #miles_gallon_to_liters_100km
    #de millas y galones a litros y km
    km = miles * 1609.344 / 1000 / 100
    litros =  3.785411784
    return litros / km

#liters_100km_to_miles_gallon
#litros y km a millas y galones
print(liters_100km_to_miles_gallon(3.9))
print(liters_100km_to_miles_gallon(7.5))
print(liters_100km_to_miles_gallon(10.))

#miles_gallon_to_liters_100km
#de millas y galones a litros y km
print(miles_gallon_to_liters_100km(60.3))
print(miles_gallon_to_liters_100km(31.4))
print(miles_gallon_to_liters_100km(23.5))
