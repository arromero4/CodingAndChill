'''
Mejorando el Cifrado César
Ya estás familiarizado con el cifrado César, y es por eso que queremos que mejores el código que te mostramos recientemente.

El cifrado César original cambia cada carácter por otro a se convierte en b, z se convierte en a, y así sucesivamente. Hagámoslo un poco más difícil y permitamos que el valor desplazado provenga del rango 1..25.

Además, dejemos que el código conserve las mayúsculas y minúsculas (las minúsculas permanecerán en minúsculas) y todos los caracteres no alfabéticos deben permanecer intactos.

Tu tarea es escribir un programa el cual:

Le pida al usuario una línea de texto para encriptar.
Le pida al usuario un valor de cambio (un número entero del rango 1..25, nota: debes obligar al usuario a ingresar un valor de cambio válido (¡no te rindas y no dejes que los datos incorrectos te engañen!).
Imprime el texto codificado.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de prueba
Entrada de muestra:

abcxyzABCxyz 123 2

Salida de muestra:

cdezabCDEzab 123Output

Entrada de muestra:

The die is cast 25

Salida de muestra:

Sgd chd hr bzrs
'''	
# Caesar cipher.
def cipher_cesar(text, valor_cambio):
    resultado = ''

    for char in text:
        if char.isalpha():
            valorNumerico = ord(char)
        
            if char.isupper():
                baseASCII = ord('A')
            else:
                baseASCII = ord('a')
        
            nuevoValor = (valorNumerico - baseASCII + valor_cambio) % 26 + baseASCII #valor punto de codigo menos la base que puede ser 97 o 65 más el valor de cambio que ingresó el usuario

            #se saca el modulo de entre 26 por las letras del alfabeto y se suma la base para obtener el valor real a utilizar
            resultado += chr(nuevoValor)
        else:
            resultado += char
    return resultado

text = input('Ingrese texto a encriptar: ')

while True:
    try:
        valor_cambio = int(input('Ingresa el valor de cambio del cifrado (1..25): '))
        if 1 <= valor_cambio <= 25:
            break
        else:
            print("Valor de cambio inválido. Inténtalo de nuevo.")
    except ValueError:
        print("Entrada inválida. Inténtalo de nuevo.")

texto_encriptado = cipher_cesar(text, valor_cambio)

print('Texto encriptado: ', texto_encriptado)