void printInfo(String name, String gender) {
  print("Nombre: $name, Genero: $gender.");
}

void main() {
  //Pasando valores en orden incorrecto
  printInfo("Masculino", "Andres");
  //Nombre: Masculino, Genero: Andres.

  //Pasando valores en orden correcto
  printInfo("Melissa", "Femenino");
  //Nombre: Melissa, Genero: Femenino.
}
