import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  MyAppbar(
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      backgroundColor: Colors.red,
      elevation: 10,
      shadowColor: Colors.white,
      toolbarOpacity: 0.5,
      centerTitle: true,
      // leading: Icon(
      //   Icons.arrow_back,
      //   color: Colors.white,
      // ),
      actions: [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            elevation: 30,
            shape: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 10)),
            itemBuilder: (context) => [
                  PopupMenuItem(value: 1, child: Text('Compartir')),
                  PopupMenuItem(value: 2, child: Text('Obtener Link')),
                ])
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
