import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
