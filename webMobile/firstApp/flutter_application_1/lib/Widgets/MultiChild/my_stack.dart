import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/cody.jpg'),
        Positioned(
            child: Icon(
          Icons.close,
          color: Colors.red,
          size: 40,
        ))
      ],
    );
  }
}
