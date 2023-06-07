"""
Scenario
Your task is to prepare a simple code able to evaluate the end time of a period of time, given as a number of minutes (it could be arbitrarily large). The start time is given as a pair of hours (0..23) and minutes (0..59). The result has to be printed to the console.

For example, if an event starts at 12:17 and lasts 59 minutes, it will end at 13:16.

Don't worry about any imperfections in your code ‒ it's okay if it accepts an invalid time ‒ the most important thing is that the code produces valid results for valid input data.

Test your code carefully. Hint: using the % operator may be the key to success.

Entrada de muestra:
12
17
59
Salida Esperada: 13:16


Entrada de muestra:
23
58
642
Salida Esperada:10:40

Entrada de muestra:
0
1
2939
Salida Esperada:1:0
"""

hour = int(input("Hora de inicio (horas): "))
mins = int(input("Minuto de inicio (minutos): "))
dura = int(input("Duración del evento (minutos): "))

# Escribe tu código aquí.
# Calcula el número total de minutos
minutos_totales = hour * 60 + mins + dura
print("Minutos totales: " +str(minutos_totales))

# Calcula la hora y los minutos finales
hora_final = minutos_totales // 60 % 24 # encuentra el número de horas ocultas en los minutos y actualiza las horas y corrige las horas para que estén en un rango de (0..23) 
print("hora final: "+ str(hora_final))

minuto_final = minutos_totales % 60 # corrige los minutos para que estén en un rango de (0..59)
print("minuto final: "+str(minuto_final))
print("El evento terminará a las: "+str(hora_final)+":"+str(minuto_final))