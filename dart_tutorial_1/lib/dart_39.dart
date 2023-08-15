void main() {
  Map<String, dynamic> book = {
    'titulo': 'Ready Player One',
    'autor': 'Ernest Cline',
    'paginas': 464
  };

  //Ciclo forEach a traves de los elementos de un Map
  book.forEach((key, value) => print('Clave: $key - Valor: $value'));
  // Clave: titulo - Valor: Ready Player One
  // Clave: autor - Valor: Ernest Cline
  // Clave: paginas - Valor: 464
}
