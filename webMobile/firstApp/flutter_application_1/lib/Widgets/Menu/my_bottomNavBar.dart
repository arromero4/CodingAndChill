import 'package:flutter/material.dart';

typedef VoidCallbackParam(int index);

class MyBottomNavBar extends StatelessWidget {
  VoidCallbackParam voidCallbackParam;
  int currentIndex;
  MyBottomNavBar(this.voidCallbackParam, this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: voidCallbackParam,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontSize: 30,
        ),
        backgroundColor: Color.fromARGB(255, 233, 210, 3),
        unselectedLabelStyle: TextStyle(fontSize: 30),
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ]);
  }
}
