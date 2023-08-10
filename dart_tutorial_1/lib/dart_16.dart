void printInfo({String? name, String? gender}) {
  print("Hola $name tu genero es $gender.");
}

void main() {
  //Puedes pasar los parametros nombrados en cualquier
  //orden como argumentos.
  printInfo(gender: "Masculino", name: "Andres");
  printInfo(name: "Meli", gender: "Femenino");
  printInfo(name: "Robin", gender: "Femenino");
  printInfo(name: "Nami", gender: "Femenino");
  printInfo(name: "Harry", gender: "Masculino");
  printInfo(gender: "Masculino", name: "Snape");
}
