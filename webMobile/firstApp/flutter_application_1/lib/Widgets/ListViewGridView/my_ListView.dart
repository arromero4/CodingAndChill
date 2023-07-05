import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/ListViewGridView/items/my_card.dart';
import 'package:flutter_application_1/Widgets/ListViewGridView/items/my_listTile.dart';

import '../../Common/my_keys.dart';
import '../../Model/sound.dart';

class MyListView extends StatefulWidget {
  MyListView() : super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: ListView.builder(
        shrinkWrap: true,
        //scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = mySounds[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: ObjectKey(sound),
            child: MyListTile(sound, index, remove),
            onDismissed: (direction) {
              remove(sound);
            },
          );
        },
      ),
    );
  }

  update(Sound sound, int index) {
    setState(() {
      mySounds[index];
    });
  }

  add(Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }
}
