import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/cody.jpg')),
              accountName: Text('Marine'),
              accountEmail: Text('Marine')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text('Mi lista'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuracion'),
          ),
          Divider(
            height: 6,
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text('Cerrar Sesion'),
          ),
        ],
      ),
    );
  }
}
