import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/sound.dart';
import 'package:flutter_application_1/Pages/nowplaylist_page.dart';

import '../Common/my_keys.dart';
import '../Widgets/ListViewGridView/items/my_card.dart';
import '../Widgets/ListViewGridView/items/my_container.dart';
import '../Widgets/ListViewGridView/items/my_listTile.dart';
import '../Widgets/ListViewGridView/my_ListView.dart';
import '../Widgets/ListViewGridView/my_gridView.dart';

class PlaylistPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => myListViewKey.currentState
            ?.add(Sound(title: 'Titulo de cancion', author: 'Autor')),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: MyListView(),
      ),
    );
  }
}
