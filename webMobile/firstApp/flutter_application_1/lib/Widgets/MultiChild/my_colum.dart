import 'package:flutter/material.dart';

class MyColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Hola Bienvenido',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Hola',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Hola',
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
