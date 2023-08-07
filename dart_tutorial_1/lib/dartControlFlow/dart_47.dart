//Creamos la excepción
class MarkException implements Exception {
  String errorMessage() {
    return 'La calificación no puede ser negativa';
  }
}

void main() {
  try {
    //revisamos la calificación
    checkMarks(-10);
  } catch (ex) {
    print(ex.toString());
    //La calificación no puede ser negativa
  }
}

void checkMarks(int marks) {
  //mandamos a llamar la excepción personalizada
  if (marks < 0) throw MarkException().errorMessage();
}
