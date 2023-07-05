import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/my_routers.dart';
import 'package:flutter_application_1/Pages/playlist_page.dart';

class MyFloatingActionButton extends StatelessWidget {
  VoidCallback voidCallback;

  MyFloatingActionButton(this.voidCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => voidCallback(),
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
