# try:
#     print("5"/0)
# except ArithmeticError:
#     print("arit")
# except ZeroDivisionError:
#     print("cero")
# except:
#     print("algo")
 

# x = '\''
# print(len(x))

# print(ord('c') - ord('a'))
# print(chr(ord('z') - 2))
 
# print(3 * 'abc' + 'xyz')
# print('Mike' > "Mikey")

# print(float("1, 3"))

import random, string

print(''.join(random.choices(string.ascii_lowercase, k=5)))