void main() {
  Map<String, String> countryCapital = {
    'Mexico': 'Mexico City',
    'India': 'New Delhi',
    'China': 'Hong Kong',
  };
  //Añadiendo elemento
  countryCapital['Japan'] = 'Tokio';
  //Actualizando elemento
  countryCapital['China'] = 'Beijing';
  print(countryCapital);
  // {
  //   Mexico: Mexico City,
  //   India: New Delhi,
  //   China: Beijing,
  //   Japan: Tokio
  // }
}
