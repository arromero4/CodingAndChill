'''
Instructions
Realiza una función o método que reciba un arreglo de números y detecte si todos los números en posición consecutiva están separados por la misma magnitud.

Ejemplos:


'''

def mismaDiferencia(arr):
    # #Reviso el tamaño de la lista, con 2 no es suficiente para realizar una comparacion, retorno True
    if len(arr) < 3:
        return True
    #para revisar que no sean negativos ni flotantes
    list = [abs(num) if num < 0 else num for num in arr]

    #Para almacenar diferencias
    diffList = []

    #se van revisando las diferencias
    for i in range(1,len(list)):
        diff = list[i] - list[i-1]
        diffList.append(abs(round(diff)))
        
    #comparo si todas las diferencias son iguales y regreso true de ser asi
    result = diffList.count(diffList[0]) == len(diffList)
    return result


print(mismaDiferencia([ 1, 3, 5 ])) #true
print(mismaDiferencia([ 194, 54, 23, 7, 3, 6, 8 ])) #false
print(mismaDiferencia([44, 37, 30, 23 ])) #true
print(mismaDiferencia([ -2.3, -1.1, 0.1, 1.3, 2.5, 3.7 ])) #true
print(mismaDiferencia([ 1, 8 ])) #true
print(mismaDiferencia([ 3, 2, 1, 2, 3, 4, 3])) #true