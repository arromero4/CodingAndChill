'''
Algunos dicen que el Dígito de la Vida es un dígito calculado usando el cumpleaños de alguien. Es simple: solo necesitas sumar todos los dígitos de la fecha. Si el resultado contiene más de un dígito, se debe repetir la suma hasta obtener exactamente un dígito. Por ejemplo:

1 Enero 2017 = 2017 01 01
2 + 0 + 1 + 7 + 0 + 1 + 0 + 1 = 12
1 + 2 = 3
3 es el dígito que buscamos y encontramos.

Tu tarea es escribir un programa que:

Le pregunté al usuario su cumpleaños (en el formato AAAAMMDD o AAAADMM o MMDDAAAA; en realidad, el orden de los dígitos no importa).
Dé como salida El Dígito de la Vida para la fecha ingresada.
Prueba tu código utilizando los datos que te proporcionamos.

Completo Test DataDatos de Prueba
Entrada de Muestra:

19991229

Salida de muestra:

6Output

Entrada de Muestra:

20000101

Salida de muestra:

4
'''
def digitOfLife(birthday):
    resultado = 0
    resultadoVida = 0
    
    birthdaydigits = list(birthday)
    for i in birthdaydigits:
        resultado += int(i)

    listaSuma = list(str(resultado))
    for j in listaSuma:
        resultadoVida += int(j)

    return resultadoVida
    
birthday = input('Inserte su fecha de cumpleaños en el siguiente formato DDMMAAA: ')
print(f'El digito de la vida es para la fecha {birthday} es', digitOfLife(birthday))