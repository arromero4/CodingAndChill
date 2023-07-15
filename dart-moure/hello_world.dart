void main() {
  /**
   * Comentario multilinea
   */

  var myString = 'Esto es una cadena de texto';
  String myString2 = 'Esto es otra cadena de texto';
  int myInt1 = 6 + 4;
  myInt1 = myInt1 + 5;

  double myDouble = 6.5;

  print(myDouble);

  //constantes
  final myFinal = 'mi propiedad final';
  //myFinal = 'cambiandola';
  //constante que se puede cambiar en tiempo de ejecución
  final myFinalInt = myInt1;
  print(myFinalInt);

  //constante que se puede solo se declara
  const myConst = 'mi propiedad constante';
  //myConst = 'cambiandola constant';

  //control de flujo
  if (myInt1 == 10) {
    print('El valor es 10');
  } else if (myInt1 == 11) {
    print('El valor no es 10 ni 11');
  } else {
    print('No es 10 ');
  }
  myFunction();
  var myReturn = myFunctionWithReturn();
  print(myReturn);

  //Colecciones
  var myList = ['Andres', 'Romero', '@arromero491'];
  print(myList[1]);

  var mySet = {
    'Andres',
    'Romero',
    '@arromero491',
    '@arromero491',
    'Andres',
  };

  print(mySet);

  var myMap = {
    'name': 'Andres',
    'lastName': 'Romero ',
    'username': 'arromero491',
  };

  print(myMap['username']);

  var myMap2 = <String, int>{};
  myMap2['id'] = 1;
  myMap2['user'] = 2;

  print(myMap2);

  for (final value in myList) {
    print(value);
  }

  var myCounter = 0;

  while (myCounter <= myInt1) {
    print(myCounter);
    myCounter += 1;
  }

  var myClass = MyClass('Andres', 32);
  print(myClass.name);

  String? myOptionlString;
  print(myOptionlString);
}

void myFunction() {
  print('esto es una función');
}

String myFunctionWithReturn() {
  return 'esto es una función con return ';
}

class MyClass {
  String name;
  int age;
  MyClass(this.name, this.age) {}
}

enum MyEnum {
  dart,
  py,
  swift,
  kotlin,
  javascript,
}
