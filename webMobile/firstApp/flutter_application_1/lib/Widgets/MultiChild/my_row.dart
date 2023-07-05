import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text('Hola'),
            Text('Hola'),
            Text('Hola'),
          ],
        ),
        Text('Hola'),
        Text('Hola'),
        Text('Hola'),
        Text('Hola'),
      ],
    );
  }
}
