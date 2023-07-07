
// Instructions
// Realiza una función o método que reciba un arreglo y regresa la mayor diferencia entre cualquier par de números, independientemente de su posición.

// Ejemplo:



function mayorDiferencia(arr){
    if (arr.length < 2) return 0
    arr.sort(function(a, b){return a - b})
    let maxNum = Math.max(...arr)

    return maxNum - arr[0]
}


console.log(mayorDiferencia( [ 1, 1, 4 ])) // 3
console.log(mayorDiferencia( [ 9, 8 ])) // 1
console.log(mayorDiferencia( [6, 22, 16, 29, 23])) // 23
console.log(mayorDiferencia( [ 28, 16, 28, 11, 14, 26, 23, 25, 17, 3, 22, 23, 23, 10 ])) // 25