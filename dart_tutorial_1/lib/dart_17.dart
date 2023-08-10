void printInfo({required String name, required String gender}) {
  print("Hola $name tu genero es $gender.");
}

void main() {
  //Puedes pasar los parametros nombrados en cualquier orden

  printInfo(gender: "Masculino", name: "Andres");
  //VSCode te muestra una advertencia,
  //te indica que falta el parametro nombrado "name"

  printInfo(gender: "Femenino", name: "Meli"); //funciona correctamente
}
