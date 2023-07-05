import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SwitchListTile(
      title: Text(isSwitch ? "On" : "Off"),
      value: isSwitch,
      activeTrackColor: Colors.black,
      activeColor: Colors.red,
      onChanged: (value) => onChanged(value),
    );
  }

  onChanged(value) {
    setState(() {
      this.isSwitch = value;
    });
  }
}
