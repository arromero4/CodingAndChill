def fun(a):
    if a > 30:
        return 3
    else:
        print( a + fun(a + 3))
        return a + fun(a + 3)
fun(25)