def fun(a):
    if a > 30:
        return 3
    else:
        print( a + fun(a + 3))
fun(25)
#La suma en la recursion se realiza hasta que alcanza el caso base