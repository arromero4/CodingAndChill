'''
LAB   Palíndromos
¿Sabes qué es un palíndromo?

Es una palabra que se ve igual cuando se lee hacia adelante y hacia atrás. Por ejemplo, "kayak" es un palíndromo, mientras que "leal" no lo es.

Tu tarea es escribir un programa que:

Le pida al usuario algún texto.
Compruebe si el texto introducido es un palíndromo e imprima el resultado.
Nota:

Supón que una cadena vacía no es un palíndromo.
Trata a las letras mayúsculas y minúsculas como iguales.
Los espacios no se toman en cuenta durante la verificación: trátalos como inexistentes.
Existe más de una solución correcta: intenta encontrar más de una.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de Prueba
Entrada de Muestra:

Ten animals I slam in a net

Salida de muestra:

Es un palíndromo
Output

Entrada de Muestra:

Eleven animals I slam in a net

Salida de muestra:

No es un palíndromo
'''
def check_palindrome(text):
    if text == '':
        return 'No es un palíndromo'
    cleanText = "".join(text.lower().split())
    reversed_list = list("".join(text.lower().split()))
    reverseWords = reversed_list[::-1]
    reverseWord = "".join(reverseWords)
    
    if cleanText == reverseWord:
        return 'Es un palíndromo'
    else:
        return 'No es un palíndromo'

text = input('Ingrese un texto para verificar si es palindromo: ')

palindrome = check_palindrome(text)

print("El texto: " + palindrome)