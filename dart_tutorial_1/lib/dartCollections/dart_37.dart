void main() {
  Map<String, String> countryCapital = {
    'Mexico': 'Mexico City',
    'India': 'New Delhi',
    'China': 'Hong Kong',
  };
  //Revisamos si la llave existe
  print(
      "¿El Map contiene Mexico?: ${countryCapital.containsKey("Mexico")}"); //true
  print(
      "¿El Map contiene Brasil?: ${countryCapital.containsKey("Brasil")}"); //false

  //Revisamos si el valor existe
  print(
      "¿Map contiene el valor CDMX?: ${countryCapital.containsValue('Mexico City')}"); //true
  print(
      "¿Map contiene el valor Brasilia?:: ${countryCapital.containsValue('Brasilia')}"); //false
}
