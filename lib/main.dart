import 'package:flutter/material.dart';
import "screens/HomeScreen.dart";

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String appTitle = "Transit Tracker";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      theme: new ThemeData(
        brightness: Brightness.light,
       primaryColor: Colors.blue[900],
       accentColor: Colors.red[500],
      ),
      home: new HomeScreen(appTitle),
    );
  }
}