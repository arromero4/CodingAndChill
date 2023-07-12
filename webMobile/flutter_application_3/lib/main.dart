import 'package:flutter/material.dart';
import 'package:flutter_application_3/provider/shoe_provider.dart';
import 'package:flutter_application_3/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (_) => ShoesProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
