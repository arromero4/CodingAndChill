import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hola mundo, bienvenido a codigofacilito',
      style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 5,
          wordSpacing: 20,
          backgroundColor: Colors.black26,
          fontFamily: "Montserrat",
          decoration: TextDecoration.underline),
      textAlign: TextAlign.center,
      softWrap: true,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
