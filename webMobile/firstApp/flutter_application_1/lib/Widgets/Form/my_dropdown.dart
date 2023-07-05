import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<StatefulWidget> createState() => MyDropDownState();
}

class MyDropDownState extends State<MyDropDown> {
  String? currentValue = '';
  List<String> courses = ['Flutter', 'Dart', 'PHP', 'Android', 'IOS'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton(
      value: currentValue,
      icon: Icon(Icons.arrow_drop_down),
      onChanged: (String? value) {
        if (value != null && currentValue != value) {
          setState(() {
            currentValue = value;
          });
        }
      },
      items: courses
          .map((String course) =>
              DropdownMenuItem(value: course, child: Text(course)))
          .toList(),
    );
  }
}
