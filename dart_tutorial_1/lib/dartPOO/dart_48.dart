enum Colors {
  red('red'),
  green('green'),
  blue('blue'),
  yellow('yellow');

  final String colored;
  const Colors(this.colored);
  String coloredColor() => 'Color $colored';
}

void main() {
  print(Colors.red.coloredColor());

  print(Colors.blue.name);
  // final favoriteColor = Colors.blue;
  // if (favoriteColor == Colors.blue) {
  //   print('Your favorite color is blue!');
  // }

  // print(Colors.red.index == 0);
  // print(Colors.green.index == 1);
  // print(Colors.blue.index == 2);

  // // Days.values: It returns all the values of the enum.
  // for (Colors color in Colors.values) {
  //   print(color);
  // }

  // var aColor = Colors.blue;

  // switch (aColor) {
  //   case Colors.red:
  //     print('Red as roses!');
  //   case Colors.green:
  //     print('Green as grass!');
  //   case Colors.yellow:
  //     print('Yellow as sunflower!');
  //   default: // sin esto ves una advertencia
  //     print(aColor); // 'Color.blue'
  // }
}
