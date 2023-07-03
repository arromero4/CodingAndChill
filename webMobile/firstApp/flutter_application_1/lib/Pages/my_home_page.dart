import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/my_icon.dart';
import '../Widgets/my_appbar.dart';
import '../Widgets/my_button.dart';
import '../Widgets/my_floating_actionbutton.dart';
import '../Widgets/my_image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        floatingActionButton: MyFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: MyAppbar(),
        body: SafeArea(
          child: MyButton(),
        ));
  }
}
