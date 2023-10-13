import 'package:flutter/material.dart';
import 'package:myfirst_flutter_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Assignment Module 10",
      home: Home(),
    );
  }
}
