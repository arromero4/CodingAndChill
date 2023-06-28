'''
LAB   ¡Encuentra una palabra!
Vamos a jugar un juego. Te daremos dos cadenas: una es una palabra (por ejemplo, "dog") y la segunda es una combinación de un grupo de caracteres.

Tu tarea es escribir un programa que responda la siguiente pregunta: ¿Los caracteres que comprenden la primera cadena están ocultos dentro de la segunda cadena?

Por ejemplo:

Si la segunda cadena es "vcxzxduybfdsobywuefgas", la respuesta es si;
Si la segunda cadena es "vcxzxdcybfdstbywuefsas", la respuesta es no (ya que no están las letras "d", "o", o "g" ni en ese orden)
Pistas:

Debes usar las variantes de dos argumentos de las funciones pos() dentro de tu código.
No te preocupes por mayúsculas y minúsculas.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de Prueba
Entrada de Muestra:

donor
Nabucodonosor

Salida de muestra:

Sí
Output

Entrada de Muestra:

donut
Nabucodonosor

Salida de muestra:

No
'''

def findAWord(word, combination):
    length = len(word)
    result = 0
    sorted(list(combination))

    for i in sorted(list(word)):
        if i in combination:
            result += 1
    if result == length:
        return "Si"
    else:
        return "No"

word = 'donut' 
combination = 'Nabucodonosor' #si
#vcxzxdcybfdstbywuefsas -- no
final = findAWord(word.lower(), combination.lower())
print(final)
