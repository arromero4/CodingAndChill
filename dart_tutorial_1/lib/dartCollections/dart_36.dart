void main() {
  Map<String, String> countryCapital = {
    'Mexico': 'Mexico City',
    'India': 'New Delhi',
    'China': 'Hong Kong',
  };

  print("Todas las llaves en Lista: ${countryCapital.keys.toList()}");
  //[Mexico, India, China]
  print("Todos los valores en una Lista: ${countryCapital.values.toList()}");
  // [Mexico City, New Delhi, Hong Kong]
}
