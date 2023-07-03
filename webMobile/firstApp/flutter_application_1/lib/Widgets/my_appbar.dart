import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Inicio"),
      backgroundColor: Colors.red,
      elevation: 10,
      shadowColor: Colors.white,
      toolbarOpacity: 0.5,
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      actions: [
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        )
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
