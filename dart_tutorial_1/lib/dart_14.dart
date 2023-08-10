//title es el parametro por default
void printInfo(String name, String gender, [String? title = "Sr/Sra."]) {
  print("Hola $title $name tu genero es $gender.");
}

void main() {
  printInfo("Carlo", "Masculino");
  //Hola Sr/Sra. Carlo tu genero es Masculino.

  printInfo("Andres", "Masculino", "Sr.");
  //Hola Sr. Andres tu genero es Masculino.

  printInfo("Melissa", "Femenino", "Sra.");
  //Hola Sra. Melissa tu genero es Femenino.
}
