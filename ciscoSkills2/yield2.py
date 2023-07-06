def powers_of_2(n):
    power = 1
    for i in range(n):
        yield power
        power *= 2
 
 
# for v in powers_of_2(8):
#     print(v)

#Generators may also be used within list comprehensions, just like here:
# t = [x for x in powers_of_2(5)]
# print(t)
 
#The list() function can transform a series of subsequent generator invocations into a real list:
t = list(powers_of_2(3))
print(t)

#The in operator

#Moreover, the context created by the in operator allows you to use a generator, too.
 
for i in range(20):
    if i in powers_of_2(4):
        print(i)