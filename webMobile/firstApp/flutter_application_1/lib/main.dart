import 'package:flutter/material.dart';
import 'package:flutter_application_1/Common/my_keys.dart';
import 'package:flutter_application_1/Common/my_routers.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/Pages/my_home_page.dart';
import 'package:flutter_application_1/Values/color_app.dart';
import 'package:flutter_application_1/Values/theme_app.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp() : super(key: myAppStateKey);
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              onGenerateRoute: MyRouters.generateRoute,
              initialRoute: ROUTE_PLAYLIST,
              themeMode: themeMode,
              darkTheme: ThemeData(
                textTheme: textThemeDark,
                scaffoldBackgroundColor: backgroundDark,
                iconTheme: iconThemeData1,
                primaryIconTheme: iconThemeDark,
              ),
              theme: ThemeData(
                textTheme: textTheme,
                scaffoldBackgroundColor: background,
                iconTheme: iconThemeData1,
                primaryIconTheme: iconThemeData1,
              ),
            ));
  }

  changeTheme(ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }
}
