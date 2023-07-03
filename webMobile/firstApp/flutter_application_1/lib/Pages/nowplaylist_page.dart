import 'package:flutter/material.dart';

class NowPlaylistPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NowPlaylistPageState();
}

class NowPlaylistPageState extends State<NowPlaylistPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          child: Text('My Home Page'),
          onPressed: () => {},
        ),
      ),
    );
  }
}
