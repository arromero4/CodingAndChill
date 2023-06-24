from random import randrange, randint

print(randrange(1), end=' ')
print(randrange(0, 1), end=' ')
print(randrange(0, 1, 1), end=' ')
print(randint(0, 1))


from random import randint

for i in range(10):
    print(randint(1, 10), end=',')
