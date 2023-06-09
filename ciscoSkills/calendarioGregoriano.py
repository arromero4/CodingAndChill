"""
Escenario
Como seguramente sabrás, debido a algunas razones astronómicas, el año puede ser bisiesto o común. Los primeros tienen una duración de 366 días, mientras que los últimos tienen una duración de 365 días.

Desde la introducción del calendario Gregoriano (en 1582), se utiliza la siguiente regla para determinar el tipo de año:

si el número del año no es divisible entre cuatro, es un año común.
de lo contrario, si el número del año no es divisible entre 100, es un año bisiesto.
de lo contrario, si el número del año no es divisible entre 400, es un año común.
de lo contrario, es un año bisiesto.
Observa el código en el editor - solo lee un número de año y debe completarse con las instrucciones que implementan la prueba que acabamos de describir.

El código debe mostrar uno de los dos mensajes posibles, que son Año Bisiesto o Año Común, según el valor ingresado.

Sería bueno verificar si el año ingresado cae en la era Gregoriana y emitir una advertencia de lo contrario: No dentro del período del calendario Gregoriano. Consejo: utiliza los operadores != y %.

Prueba tu código con los datos que hemos proporcionado.
Entrada de muestra:
2000
Salida esperada:
Año bisiesto

Entrada de muestra:
2015
Salida esperada:
Año comun

Entrada de muestra:
1999
Salida esperada:
Año comun

Entrada de muestra:
1996
Salida esperada:
Año bisiesto

Entrada de muestra:
1580
Salida esperada:
No dentro del período del calendario gregoriano

El operador != (no es igual a) también compara los valores de dos operandos. Aquí está la diferencia: si son iguales, el resultado de la comparación es False. Si no son iguales, el resultado de la comparación es True.
"""
year = int(input("Introduce un año: "))

if year < 1582:
	print("No esta dentro del período del calendario Gregoriano")
else:
        if year % 4 != 0:
            print("year % 4",year % 4)
            print("Año Común")
        elif year % 100 != 0:
            print("year % 100",year % 100)
            print("Año Bisiesto")
        elif year % 400 != 0:
            print("year % 400",year % 400)
            print("Año Común")
        else:
            print(year)
            print("Año Bisiesto")