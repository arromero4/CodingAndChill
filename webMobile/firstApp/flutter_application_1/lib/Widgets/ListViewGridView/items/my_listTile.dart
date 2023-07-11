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
      ),
      subtitle: Text(sound.author),
      trailing: InkWell(
        onTap: () => myListViewKey.currentState?.remove(sound),
        child: IconTheme(
            data: Theme.of(context).primaryIconTheme, child: Icon(Icons.close)),
      ),
      leading: IconTheme(
          data: Theme.of(context).primaryIconTheme,
          child: Icon(Icons.play_circle_fill)),
      onTap: () {
        myListViewKey.currentState?.update(sound..title = 'Hola', index);
      },
      onLongPress: () {
        print('longPress');
      },
    );
  }
}
