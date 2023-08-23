class Vehicle {
  late String _model;
  late int _year;

  //Getter Model
  String get model => _model;

  // Setter Model
  set model(String model) => _model = model;

  // Getter Year
  int get year => _year;

  // Setter Year
  set year(int year) => _year = year;
}

void main() {
  var vehicle = Vehicle();
  vehicle.model = "Toyota";
  vehicle.year = 2019;

  print(vehicle.model);
  print(vehicle.year);
}
