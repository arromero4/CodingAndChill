import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController nameControl = TextEditingController();
  TextEditingController emailControl = TextEditingController();
  TextEditingController movilControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  TextEditingController repeatPasswordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
        child: Column(
      children: [
        TextFormField(
          controller: nameControl,
          decoration: InputDecoration(
            labelText: 'Name',
          ),
          validator: (value) {
            if (value?.length == 0) {
              return "El nombre es necesario";
            }
            return null;
          },
        ),
        TextFormField(
          controller: emailControl,
          decoration: InputDecoration(
            labelText: 'Email',
          ),
          validator: (value) {
            String pattern =
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
            RegExp regExp = RegExp(pattern);
            if (value?.length == 0) {
              return "El email es necesario";
            } else if (!regExp.hasMatch(value.toString())) {
              return "Correo invalido";
            }

            return null;
          },
          keyboardType: TextInputType.emailAddress,
        ),
        TextFormField(
          controller: movilControl,
          decoration: InputDecoration(
            labelText: 'Movil',
          ),
          validator: (value) {
            if (value?.length == 0) {
              return "El telefono es necesario";
            } else if (value?.length != 10) {
              return "El numero debe de tener 10 digitos";
            }

            return null;
          },
          keyboardType: TextInputType.number,
        ),
        TextFormField(
          controller: passwordControl,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          obscureText: true,
        ),
        TextFormField(
          controller: repeatPasswordControl,
          decoration: InputDecoration(
            labelText: 'Repeat Password',
          ),
          validator: (value) {
            if (value != passwordControl.text.toString()) {
              return "Las contraseñas no coinciden";
            }

            return null;
          },
          obscureText: true,
        ),
        ElevatedButton(onPressed: () => save(), child: Text("Guardar"))
      ],
    ));
  }

  save() {
    if (formKey.currentState!.validate()) {
      print("Nombre ${nameControl.text}");
      print("Nombre ${emailControl.text}");
      print("Nombre ${movilControl.text}");
      print("Nombre ${passwordControl.text}");
      print("Nombre ${repeatPasswordControl.text}");
      formKey.currentState?.reset();
    }
  }
}
