import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print('onDoubleTap');
      },
      onTapDown: (TapDownDetails details) {
        print('onTapDown');
      },
      onTapUp: (TapUpDetails details) {
        print('onTapUp');
      },
      child: Card(
        margin: EdgeInsets.all(20),
        elevation: 10,
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Colors.red, width: 2)),
        shadowColor: Colors.orange,
        child: Text('Hola mundo', style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
