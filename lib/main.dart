import 'package:flutter/material.dart';
import 'arc.dart';
import 'home.dart';
import 'page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red
      ),
      home: Home(),
    );
  }
}