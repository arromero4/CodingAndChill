#Funcion que revisa si un numero se repite al menos un numero minimo de veces
def repeat(arreglo, num, min):
    
    elem = [elem for elem in arreglo if elem == num]
    return len(elem) >= min
    
arreglo = [4, 5, 2, 4, 5, 9, 9, 4, 4]

print(repeat(arreglo, 4, 5))#Regresa false
print(repeat(arreglo, 4, 4)) #Regresa true
print(repeat(arreglo, 4, 3)) #Regresa true
print(repeat(arreglo, 9, 2)) #Regresa true