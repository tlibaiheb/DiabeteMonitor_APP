import 'package:flutter/material.dart';
import 'home.dart';
import 'signin.dart';
import 'firstpage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstPage(),

    );
  }
}
