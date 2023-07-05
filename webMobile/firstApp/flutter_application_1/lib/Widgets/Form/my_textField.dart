import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController controlName = TextEditingController();
  String name = '';
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(name),
        TextField(
          focusNode: node1,
          controller: controlName,
          autofocus: true,
          keyboardType: TextInputType.number,
        ),
        TextField(
          focusNode: node2,
          controller: controlName,
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
          ),
          maxLength: 6,
          //maxLines: 3,
          obscureText: true,
          decoration: InputDecoration(
              //hintText: 'Edad',
              //hintStyle: TextStyle(color: Colors.red),
              labelText: 'Edad',
              enabled: false,
              prefix: Icon(Icons.favorite),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.blue,
                width: 5,
              )),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.green,
                width: 5,
              ))),
        ),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(node2);
              setState(() {
                this.name = controlName.text.toString();
              });
            },
            child: Text('Guardar'))
      ],
    );
  }
}
