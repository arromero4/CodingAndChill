# my_list = [1, 2]
 
# for v in range(2):
#     my_list.insert(-1, my_list[v])
 
# print(my_list)

# nums = [1, 2, 3]
# vals = nums
# print(vals)

# def function_1(a):
#     return None
 
 
# def function_2(a):
#     return function_1(a) * function_1(a)
 
 
# print(function_2(2))

# def func(a, b):
#     return b ** a
 
 
# print(func(b=2, 2))

# z = 0
# y = 10
# x = y < z and z > y or y < z and z < y
# print(x)

# my_list = [x * x for x in range(5)]
 
 
# def fun(lst):
#     del lst[lst[2]]
#     return lst
 
 
# print(fun(my_list))
 

# x = 1
# y = 2
# x, y, z = x, x, y
# z, y, z = x, y, z
 
# print(x, y, z)

# a = 1
# b = 0
# a = a ^ b
# b = a ^ b
# a = a ^ b
 
# print(a, b)

# def fun(x):
#     if x % 2 == 0:
#         return 1
#     else:
#         return 2
 
 
# print(fun(fun(2)))
 

# nums = [1, 2, 3]
# vals = nums
# del vals[:]
# print(vals)
# print(nums)


# x = int(input())
# y = int(input())
# x = x % y
# x = x % y
# y = y % x
# print(y)


# y = input()
# x = input()
# print(x + y)

# print("a", "b", "c", sep="sep")

# x = 1 // 5 + 1 / 5
# print(x)


# my_tuple[1] = my_tuple[1] + my_tuple[0]
# x = float(input())
# y = float(input())
# print(y ** (1 / x))

# dct = {'one': 'two', 'three': 'one', 'two': 'three'}
# v = dct['three']
 
# for k in range(len(dct)):
#     v = dct[v]
 
# print(v)

# lst = [i for i in range(-1, -2)]
# print(lst)

# def fun(x, y):
#     if x == y:
#         return x
#     else:
#         return fun(x, y-1)
 
 
# print(fun(0, 3))

# i = 0
# while i < i + 2 :
#     i += 1
#     print("*")
# else:
#     print("*")


# tup = (1, 2, 4, 8)
# tup = tup[-2:-1]
# tup = tup[-1]
# print(tup)


# dd = {"1": "0", "0": "1"}
# for x in dd.vals():
#     print(x, end="")

# dct = {}
# dct['1'] = (1, 2)
# dct['2'] = (2, 1)
 
# for x in dct.keys():
#     print(dct[x][1], end="")

# def fun(inp=2, out=3):
#     return inp * out
 
 
# print(fun(out=2))

# lst = [[x for x in range(3)] for y in range(3)]
# print(lst)
# for r in range(3):
#     for c in range(3):
#         print(lst[r][c])
#         if lst[r][c] % 2 != 0:
#             print("#")

# try:
#     value = input("Enter a value: ")
#     print(int(value)/len(value))
# except ValueError:
#     print("Bad input...")
# except ZeroDivisionError:
#     print("Very bad input...")
# except TypeError:
#     print("Very very bad input...")
# except:
#     print("Booo!")

# try:
#     print(5/0)
#     break
# except:
#     print("Sorry, something went wrong...")
# except (ValueError, ZeroDivisionError):
#     print("Too bad...")


# foo = (1, 2, 3)
# foo.index(0)

print(Hello, World!)