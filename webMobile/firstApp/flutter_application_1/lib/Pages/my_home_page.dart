import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/home_arguments.dart';
import 'package:flutter_application_1/Widgets/Menu/Fragments/my_home.dart';
import 'package:flutter_application_1/Widgets/Menu/Fragments/my_profile.dart';
import 'package:flutter_application_1/Widgets/Menu/Fragments/my_settings.dart';
import 'package:flutter_application_1/Widgets/Menu/my_bottomNavBar.dart';
import 'package:flutter_application_1/Widgets/Menu/my_drawer.dart';
import 'package:flutter_application_1/Widgets/my_icon.dart';
import '../Widgets/my_appbar.dart';
import '../Widgets/my_button.dart';
import '../Widgets/my_floating_actionbutton.dart';
import '../Widgets/my_image.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List fragments = [
    MyHome(),
    MyProfile(),
    MySettings(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;

    return Scaffold(
        drawer: MyDrawer(),
        bottomNavigationBar: MyBottomNavBar(onTab, currentIndex),
        backgroundColor: Colors.red,
        floatingActionButton: MyFloatingActionButton(buttonSheet),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: MyAppbar('Codigo facilito'),
        body: fragments[currentIndex]);
  }

  buttonSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Compartir'),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text('Copiar Link'),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text('Enviar'),
              )
            ],
          );
        });
  }

  onTab(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }
}
