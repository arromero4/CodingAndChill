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

def verificar_ocurrencia(palabra, cadena):
    indice = -1
    for letra in palabra:
        indice = cadena.find(letra, indice + 1)
        if indice == -1:
            return False
    return True

# Ejemplos de uso
palabra_1 = "dog"
cadena_1 = "vcxzxduybfdsobywuefgas"
print(verificar_ocurrencia(palabra_1, cadena_1))  # Resultado: True

palabra_2 = "dog"
cadena_2 = "vcxzxdcybfdstbywuefsas"
print(verificar_ocurrencia(palabra_2, cadena_2))  # Resultado: False