enum Period {
  morning(name: "morning", hours: '12 - 12'),
  afternoon(name: "afternoon", hours: '12 - 3'),
  evening(name: "evening", hours: '3 - 12');

  const Period({required this.name, required this.hours});

  final String name;
  final String hours;

  String greet() {
    return 'Good $name';
  }
}

void main() {
  Period period = Period.morning;
  print(period.name);
}
