'''
 LAB   Anagrams
Un anagrama es una nueva palabra formada al reorganizar las letras de una palabra, usando todas las letras originales exactamente una vez. Por ejemplo, las frases "rail safety" y "fairy tales" son anagramas, mientras que "I am" y "You are" no lo son.

Tu tarea es escribir un programa que:

Le pida al usuario dos textos por separado.
Compruebe si los textos ingresados son anagramas e imprima el resultado.
Nota:

Supongamos que dos cadenas vacías no son anagramas.
Tratar a las letras mayúsculas y minúsculas como iguales.
Los espacios no se toman en cuenta durante la verificación: trátalos como inexistentes.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de Prueba
Entrada de Muestra:

Listen
Silent

Salida de muestra:

Anagramas
Output

Entrada de Muestra:

modern
norman

Salida de muestra:

No son anagramas
Output

'''
def check_anagrams(text1, text2):
    firstWord = list(text1.lower())
    ordered1 = firstWord
    secondWord = list(text2.lower())
    ordered2 = secondWord
    print(ordered1)
    print(ordered2)   

print('Se revisaran dos palabras para determinar si son Anagramas')
text1 = 'Listen' #input('Ingrese la primera palabra: ')
text2 = 'Silent'#input('Ingrese la segunda palabra: ')

anagrams = check_anagrams(text1, text2)

#print('Las palabras son: ' + anagrams)