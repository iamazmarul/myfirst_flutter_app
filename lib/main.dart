
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment Module 5 ",
      debugShowCheckedModeBanner: true,
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      drawer: Drawer(
      ),
      body: Scrollbar(
        // list view builder/Sparetor
        //   grid view builder
        /// Navigation
        /// Navigator 1 Simple, 2 Gomplex
        /// Router Package Getx
        /// push and pop
        /// pushreplace
        /// pushandreomveuntil
        child: ListView.builder(itemBuilder: ),
      ),
    );
  }

}