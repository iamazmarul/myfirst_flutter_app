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
        centerTitle: true,
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        leading: Icon(
          Icons.store_mall_directory_sharp,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This Is Mod 5 Assignment", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: 'My ', style: TextStyle(color: Colors.red, fontSize: 25,)),
                    TextSpan(text: 'phone ', style: TextStyle(color: Colors.blue, fontSize: 15,)),
                    TextSpan(text: 'name ', style: TextStyle(color: Colors.purpleAccent, fontSize: 20, fontWeight: FontWeight.w700)),
                    TextSpan(text: 'Your phone name ', style: TextStyle(color: Colors.orange, fontSize: 25,)),
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}