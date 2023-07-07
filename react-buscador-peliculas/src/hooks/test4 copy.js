
// Instructions
// Realiza una función o método que reciba un arreglo y regresa la mayor diferencia entre cualquier par de números, independientemente de su posición.

// Ejemplo:



function mayorDiferencia(arr){
    if (arr.length < 2) return 0
    arr.sort();
    let min = arr[0];
    let maxDiff = 0;


    //recorre arreglo
    for (let i = 1; i < arr.length; i++) {

    if (arr[i] < min) {
      min = arr[i]; //se establece el minimo
    } else {
      const diff = arr[i] - min; //se establece la diferencia

      if (diff >= maxDiff) {
        maxDiff = diff;
      }
    }
}

  return maxDiff;
    
