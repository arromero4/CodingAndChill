void main() {
  Map<String, dynamic> book = {
    'titulo': 'Ready Player One',
    'autor': 'Ernest Cline',
    'paginas': 464
  };

  //Ciclo a traves de los elementos de un Map

  for (MapEntry book in book.entries) {
    print('Key es ${book.key}, value es ${book.value}');
    // Key es titulo, value es Ready Player One
    // Key es autor, value es Ernest Cline
    // Key es paginas, value es 464
  }
}
