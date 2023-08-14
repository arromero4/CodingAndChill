void main() {
  Map<String, double> mathMarks = {
    "andres": 33,
    "meli": 30,
    "lety": 68,
    "betty": 54,
    "diego": 15,
  };
  //Map antes de eliminar
  print(mathMarks);
  //{andres: 33.0, meli: 30.0, lety: 68.0, betty: 54.0, diego: 15.0}

  //Eliminar elemento
  mathMarks.remove("meli");

  //Map después de eliminar
  print(mathMarks);
  //{andres: 33.0, lety: 68.0, betty: 54.0, diego: 15.0}

  //Eliminar elementos menores a 32
  mathMarks.removeWhere((key, value) => value < 32);

  //Map después de eliminar
  print(mathMarks);
  //{andres: 33.0, lety: 68.0, betty: 54.0}

  //Eliminar todos los elementos del map
  mathMarks.clear();

  //Map vacio
  print(mathMarks); //{}
}
