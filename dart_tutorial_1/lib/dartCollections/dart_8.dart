void main() {
  List<String> drinks = ["agua", "jugo", "leche", "malteada"];
  List<int> ages = [];

  print("¿Drinks está vacía?: ${drinks.isEmpty}"); //false
  print("¿Drinks no está vacía?: ${drinks.isNotEmpty}"); //true
  print("¿Ages está vacía?: '${ages.isEmpty}"); //true
  print("¿Ages no está vacía?:  ${ages.isNotEmpty}"); //false
}
