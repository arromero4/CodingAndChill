import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/my_home_page.dart';
import 'package:flutter_application_1/Pages/nowplaylist_page.dart';
import 'package:flutter_application_1/Pages/playlist_page.dart';
import 'package:page_transition/page_transition.dart';

const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAYLIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return PageTransition(
          child: MyHomePage(),
          type: PageTransitionType.scale,
          settings: settings,
          alignment: Alignment.topLeft,
        );
      case "/login":
        return MaterialPageRoute(builder: (_) => LoginPage());
      case "/play_list":
        return MaterialPageRoute(builder: (_) => PlaylistPage());
      case "/now_playing":
        return MaterialPageRoute(builder: (_) => NowPlaylistPage());
      default:
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}
