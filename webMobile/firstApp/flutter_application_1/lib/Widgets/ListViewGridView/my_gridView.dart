import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/ListViewGridView/items/my_card.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 30,
          mainAxisSpacing: 40,
        ),
        //physics: NeverScrollableScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, index) => MyCard());
  }
}
