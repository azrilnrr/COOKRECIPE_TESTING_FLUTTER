import 'package:cookrecipe/home_screen.dart';
import 'package:cookrecipe/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Recipe',
      theme: ThemeData(),
      home: Login(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => home(),
      },
    );
  }
}
