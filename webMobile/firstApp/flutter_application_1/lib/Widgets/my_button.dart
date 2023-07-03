import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myOutlineButton();
  }

  myElevateButton() {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.save,
        color: Colors.red,
      ),
      label: const Text('Guardar'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shadowColor: Colors.yellow,
        elevation: 20,
      ),
      onLongPress: () {
        print('ElevatedButton onLongPress');
      },
      onPressed: () {
        print('ElevatedButton');
      },
    );
  }

  myTextButton() {
    return TextButton(
        onPressed: () {
          print('TextButton');
        },
        child: const Text('Guardar'));
  }

  myOutlineButton() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.yellow, width: 2),
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {
          print('TextButton');
        },
        child: const Text('Guardar'));
  }
}
