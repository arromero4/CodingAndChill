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
def cifrado_cesar(texto, valor_cambio):
    resultado = ""
    
    for carac in texto:
        # Comprobar si el carácter es alfabético
        if carac.isalpha():
            # Obtener el valor numérico del carácter
            valor = ord(carac)
            
            # Determinar si el carácter es mayúscula o minúscula
            if carac.isupper():
                base = ord('A')
            else:
                base = ord('a')
            
            # Calcular el nuevo valor desplazado
            nuevo_valor = (valor - base + valor_cambio) % 26 + base
            
            # Convertir el nuevo valor en carácter y agregarlo al resultado
            resultado += chr(nuevo_valor)
        else:
            # Conservar los caracteres no alfabéticos
            resultado += carac
    
    return resultado


# Pedir al usuario el texto y el valor de cambio
texto = input("Ingresa una línea de texto para encriptar: ")
while True:
    try:
        valor_cambio = int(input("Ingresa un valor de cambio (1-25): "))
        if 1 <= valor_cambio <= 25:
            break
        else:
            print("Valor de cambio inválido. Inténtalo de nuevo.")
    except ValueError:
        print("Entrada inválida. Inténtalo de nuevo.")

# Encriptar el texto usando el cifrado César
texto_encriptado = cifrado_cesar(texto, valor_cambio)

# Imprimir el texto encriptado
print("Texto encriptado:", texto_encriptado)