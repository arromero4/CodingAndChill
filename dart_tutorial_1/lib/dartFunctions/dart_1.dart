class Dog {
  String name;
  int age;
  double height;
  String race;

  Dog(
      {required this.name,
      required this.age,
      required this.height,
      required this.race});

  void barking() {
    print('$name is barking...');
  }

  void eating() {
    print('$name eating because its height is $height ...');
  }
}
