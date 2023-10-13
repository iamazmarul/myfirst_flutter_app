import 'package:flutter/material.dart';
import 'package:myfirst_flutter_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment Module 10",
      home: Home(),
    );
  }
}
