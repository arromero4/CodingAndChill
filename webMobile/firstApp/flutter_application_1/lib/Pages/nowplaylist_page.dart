import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/my_home_page.dart';
import 'package:flutter_application_1/Widgets/MultiChild/my_colum.dart';
import 'package:flutter_application_1/Widgets/MultiChild/my_row.dart';

import '../Widgets/MultiChild/my_stack.dart';

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
        child: MyStack(),
      ),
    );
  }
}
