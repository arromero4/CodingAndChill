import calendar

'''
El resultado mostrado es similar al resultado del comando cal disponible en Unix. Si deseas cambiar el formato de calendario predeterminado, puedes utilizar los siguientes parámetros:

w: ancho de la columna de fecha (por defecto 2).
l: número de líneas por semana (por defecto 1).
c: número de espacios entre las columnas del mes (por defecto 6).
m: número de columnas (por defecto 3).
'''
#print(calendar.calendar(2023))

'''
El módulo calendar tiene una función llamada month, que permite mostrar un calendario para un mes específico
'''
# print(calendar.month(2023, 7))

'''
el método setfirstweekday requiere un parámetro que exprese el día de la semana en forma de valor entero.
'''
# calendar.setfirstweekday(calendar.SUNDAY)
# calendar.prmonth(2023, 7)

'''
es la función llamada weekday, que devuelve el día de la semana como un valor entero para el año, mes y día. Veámoslo en la práctica.

Ejecuta el código en el editor para verificar el día de la semana en que cae el 24 de diciembre de 2020.
'''
# print(calendar.weekday(2020, 12, 24))


'''
Probablemente hayas notado que el calendario contiene encabezados semanales en forma abreviada. Si es necesario, puedes obtener nombres cortos de días de la semana utilizando el método weekheader.

El método weekheader requiere que se especifique el ancho en caracteres para un día de la semana. Si el ancho que se proporciona es mayor que 3, aún obtendrás los nombres abreviados de los días de la semana que constan de tres caracteres
'''
#print(calendar.weekheader(2))


'''
El módulo calendar proporciona dos funciones útiles para comprobar si los años son bisiestos.

La primera, llamada isleap, devuelve True si el año pasado es bisiesto, o False de lo contrario. El segundo, llamado leapdays, devuelve el número de años bisiestos en el rango de años dado.
'''

# import calendar

# print(calendar.isleap(2020))
# print(calendar.leapdays(2010, 2021))  # Hasta 2021, pero sin incluirlo.


'''
Creando un objeto Calendar
El constructor de la clase Calendar toma un parámetro opcional llamado firstweekday, por defecto es igual a 0 (lunes).

El parámetro firstweekday debe ser un valor entero entre 0-6. 
'''

# import calendar  

# c = calendar.Calendar(calendar.SUNDAY)

# for weekday in c.iterweekdays():
#     print(weekday, end=" ")
    
'''
 El método itermonthdates()
La clase Calendar tiene varios métodos que devuelven un iterador. Uno de ellos es el método itermonthdates, que requiere especificar el año y el mes.

Como resultado, se devuelven todos los días del mes y año especificados, así como todos los días antes del comienzo del mes o del final del mes que son necesarios para obtener una semana completa.
'''

# import calendar  

# c = calendar.Calendar()

# for date in c.itermonthdates(2019, 11):
#     print(date, end=" ")
    

'''
Otros métodos que retornan o devuelven iteradores
Otro método útil en la clase Calendar es el método llamado itermonthdates, que toma año y mes como parámetros, y luego devuelve el iterador a los días de la semana representados por números.
'''

# import calendar  

# c = calendar.Calendar()

# for iter in c.itermonthdays(2019, 11):
#     print(iter, end=" ")
    
'''
El método monthdays2calendar()
La clase Calendar tiene varios otros métodos útiles sobre los que puedes obtener más información en la documentación (https://docs.python.org/3/library/calendar.html).

Uno de ellos es el método monthdays2calendar, que toma el año y el mes, y luego devuelve una lista de semanas en un mes específico. Cada semana es una tupla que consta de números de días y números de días de la semana. 
'''
import calendar  

c = calendar.Calendar()

for data in c.monthdays2calendar(2020, 12):
    print(data)
    