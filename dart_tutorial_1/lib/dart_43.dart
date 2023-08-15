void main() {
  List<String>? days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  List<String> startWithS =
      days.where((element) => element.startsWith("S")).toList();

  print(startWithS); //[Sunday, Saturday]

  days.removeWhere((element) => element.startsWith("F"));
  print(days); //[Sunday, Monday, Tuesday, Wednesday, Thursday, Saturday]
}
