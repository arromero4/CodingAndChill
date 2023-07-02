'''
LAB   Tríangulo
Ahora vamos a colocar la clase Point (ver Lab anterior) dentro de otra clase. Además, vamos a poner tres puntos en una clase, lo que nos permitirá definir un triángulo. ¿Cómo podemos hacerlo?

La nueva clase se llamará Triangle y esto es lo que queremos:

El constructor acepta tres argumentos - todos ellos son objetos de la clase Point.
Los puntos se almacenan dentro del objeto como una lista privada.
La clase proporciona un método sin parámetros llamado perimeter(), que calcula el perímetro del triángulo descrito por los tres puntos; el perímetro es la suma de todas las longitudes de los lados (lo mencionamos para que conste, aunque estamos seguros de que tú mismo lo conoces perfectamente).
Completa la plantilla que te proporcionamos en el editor, ejecuta tu código y verifica si tu salida se ve igual que la nuestra.

A continuación puedes copiar el código de la clase Point, el cual se utilizo en el laboratorio anterior:

Ocultar
class Point:
    def __init__(self, x=0.0, y=0.0):
        self.__x = x
        self.__y = y
    
Salida esperada
3.414213562373095
'''

import math

class Point:
    def __init__(self, x=0.0, y=0.0):
        self.__x = x
        self.__y = y

class Triangle:
    def __init__(self, point1, point2, point3):
        self.__points = [point1, point2, point3]
    
    def perimeter(self):
        side_lengths = []
        for i in range(3):
            p1 = self.__points[i]
            p2 = self.__points[(i + 1) % 3]
            side_length = math.sqrt((p2.__x - p1.__x) ** 2 + (p2.__y - p1.__y) ** 2)
            side_lengths.append(side_length)
        
        return sum(side_lengths)

# Crear instancias de la clase Point
p1 = Point(0, 0)
p2 = Point(3, 0)
p3 = Point(0, 4)

# Crear instancia de la clase Triangle
triangle = Triangle(p1, p2, p3)

# Calcular el perímetro e imprimirlo
perimeter = triangle.perimeter()
print(perimeter)