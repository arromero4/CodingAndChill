import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        print('FloatingActionButton');
      },
      backgroundColor: Colors.yellow,
      elevation: 20,
      tooltip: "Agregar usuario",
      icon: const Icon(
        Icons.add,
        size: 40,
        color: Colors.black,
      ),
      label: const Text(
        "Agregar usuario",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
