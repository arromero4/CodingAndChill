import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/home_arguments.dart';
import 'package:flutter_application_1/Common/my_routers.dart';
import 'package:flutter_application_1/Pages/my_home_page.dart';
import 'package:flutter_application_1/Widgets/Form/my_Form.dart';
import 'package:flutter_application_1/Widgets/Form/my_checkbox.dart';
import 'package:flutter_application_1/Widgets/Form/my_datepicker.dart';
import 'package:flutter_application_1/Widgets/Form/my_dropdown.dart';
import 'package:flutter_application_1/Widgets/Form/my_radio.dart';
import 'package:flutter_application_1/Widgets/Form/my_switch.dart';
import 'package:flutter_application_1/Widgets/Form/my_textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyForm(),
      ),
    );
  }
}
