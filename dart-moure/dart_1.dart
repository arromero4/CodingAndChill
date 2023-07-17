void main() {
  //variables

  //<datatype> <variablename> = value;
  //double firstValue = 19.5;
  //double secondValue = 62.22;
  //String firstValue = 'hello'
  // firstValue = true;
  //dynamic firstValue = 10;
  //String greeting = 'hello world';
  //print('My first ${greeting.length}');

  //var/final/const

  //var someValue = 10;
  //final someValue2 = DateTime.now();
  //const someValue3 = '10';

  //Optional Variables
  //String/int/bool and null

  String? someValue;

  print(someValue ?? 1);

  someValue = 'hello';

  print(someValue ?? 1);

//if statements
  String someValue = 'Hi!';

  if (someValue != 'Hi!') {
    print('WOW');
  } else {
    print(':(');
  }

  //TERNARY
  String value = someValue.startsWith('h') ? 'wow' : 'sad';

  print(value);
  int age = 20;
  //SWITCH STATEMENT
  switch (someValue) {
    case 'hi!' when age >= 20:
      print('WOOOOW');
    case 'Hi!':
      print(' :( ');
    default:
      print('not found');
  }
}
