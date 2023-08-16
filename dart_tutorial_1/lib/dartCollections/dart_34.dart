void main() {
  Map<String, double> expenses = {
    'dom': 250.0,
    'lun': 300.0,
    'mar': 350.0,
  };

  print("Todas las claves del Map: ${expenses.keys}");
  print("Todas los valores del Map: ${expenses.values}");
  print("¿El Map está vacío?: ${expenses.isEmpty}");
  print("¿El Map no está vacío?: ${expenses.isNotEmpty}");
  print("Longitud del Map: ${expenses.length}");
}
