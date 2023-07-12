import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/counter_app_2.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/counter_app.dart';

class TextCounter extends StatelessWidget {
  const TextCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<Counter2>().count2.toString(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
