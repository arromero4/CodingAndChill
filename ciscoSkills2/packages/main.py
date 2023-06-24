from sys import path
 
path.append('..∖∖modules')

from module import suml, prodl
# import sys

# for p in sys.path:
#   print(p)
#path.append('..∖∖modules')
 
zeroes = [0 for i in range(5)]
ones = [1 for i in range(5)]
print(zeroes, 'zeroes')
print(ones, 'ones')

print(suml(zeroes))
print(prodl(ones))