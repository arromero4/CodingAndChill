import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('onTap');
      },
      onLongPress: () {
        print('onLongPress');
      },
      child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 30),
          padding: EdgeInsets.only(top: 60),
          child: Text('Hola mundo'),
          decoration: BoxDecoration(
              color: Colors.green,
              //borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.red, offset: Offset(4, 8))],
              gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              image: DecorationImage(
                  image: AssetImage('assets/images/cody.jpg')))),
    );
  }
}
