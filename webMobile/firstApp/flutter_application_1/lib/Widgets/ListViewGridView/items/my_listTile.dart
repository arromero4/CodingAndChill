import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../Common/my_keys.dart';
import '../../../Model/sound.dart';

typedef VoidCallbackParam = Function(Sound sound);

class MyListTile extends StatelessWidget {
  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;
  MyListTile(this.sound, this.index, this.voidCallbackParam, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        sound.title,
        style: TextStyle(fontSize: 30),
      ),
      subtitle: Text(sound.author),
      trailing: InkWell(
        onTap: () => myListViewKey.currentState?.remove(sound),
        child: Icon(Icons.close),
      ),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () {
        myListViewKey.currentState?.update(sound..title = 'Hola', index);
      },
      onLongPress: () {
        print('longPress');
      },
    );
  }
}
