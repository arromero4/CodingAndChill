//title es el parametro opcional
void printInfo(String name, String gender, [String? title]) {
  print("Hola $title $name tu genero es $gender.");
}

void main() {
  printInfo("Carlo", "Masculino");
  //Hola null Carlo tu genero es Masculino.

  printInfo("Andres", "Masculino", "Sr.");
  //Hola Sr. Andres tu genero es Masculino.

  printInfo("Melissa", "Femenino", "Sra.");
  //Hola Sra. Melissa tu genero es Femenino.
}
