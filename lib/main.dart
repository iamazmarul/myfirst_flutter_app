import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Live Test Module 09",
      debugShowCheckedModeBanner: true,
      home: Home(),
    );
  }
}
