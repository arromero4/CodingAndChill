'''
Tu tarea es implementar una clase llamada Weeker. Sí, tus ojos no te engañan, este nombre proviene del hecho de que los objetos de esta clase podrán almacenar y manipular los días de la semana.

El constructor de la clase acepta un argumento: una cadena. La cadena representa el nombre del día de la semana y los únicos valores aceptables deben provenir del siguiente conjunto:

Lun Mar Mie Jue Vie Sab Dom

Invocar al constructor con un argumento desde fuera de este conjunto debería generar la excepción WeekDayError (defínela tu mismo; no te preocupes, pronto hablaremos sobre la naturaleza objetiva de las excepciones). La clase debe proporcionar las siguientes facilidades:

Los objetos de la clase deben ser "imprimibles", es decir, deben poder convertirse implícitamente en cadenas de la misma forma que los argumentos del constructor.
La clase debe estar equipada con métodos de un parámetro llamados add_days(n) y subtract_days(n), siendo n un número entero que actualiza el día de la semana almacenado dentro del objeto mediante el número de días indicado, hacia adelante o hacia atrás.
Todas las propiedades del objeto deben ser privadas.
Completa la plantilla que te proporcionamos en el editor, ejecuta su código y verifica si tu salida se ve igual que la nuestra. Completa la plantilla que te proporcionamos en el editor, ejecuta su código y verifica si tu salida se ve igual que la nuestra.

Salida Esperada
Lun Mar Dom Lo siento, no puedo atender tu solicitud.
'''

class WeekDayError(Exception):
    pass
	

class Weeker:
    #
    # Escribir código aquí.
    #
    _valid_days = {'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab', 'Dom'}

    def __init__(self, day):
        if day not in self._valid_days:
            raise WeekDayError('Dia de la semana invalido')
        self._day = day

    def __str__(self):
        return self._day
    
    def add_days(self, n):
        days_list = list(self._valid_days)
        current_index = days_list.index(self._day)
        new_index = (current_index + n) % len(days_list)
        self._day = days_list[new_index]

    def subtract_days(self, n):
        self.add_days(-n)

try:
    weekday = Weeker('Lun')
    print(weekday)
    weekday.add_days(15)
    print(weekday)
    weekday.subtract_days(23)
    print(weekday)
    weekday = Weeker('Lunes')
except WeekDayError:
    print("Lo siento, no puedo atender tu solicitud.")
    