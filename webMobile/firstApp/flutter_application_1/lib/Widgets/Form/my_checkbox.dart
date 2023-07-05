import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> {
  String currentValue = '';
  List<String> courses = ['Flutter', 'Dart', 'PHP', 'Android', 'IOS'];
  List<bool> isChecked = [];

  @override
  void initState() {
    super.initState();
    isChecked = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(isChecked.toString()),
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: ((context, index) {
            return CheckboxListTile(
                title: Text(courses[index]),
                value: isChecked[index],
                onChanged: (value) {
                  setState(() {
                    isChecked[index] = value as bool;
                  });
                });
          }),
        )
      ],
    );
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
