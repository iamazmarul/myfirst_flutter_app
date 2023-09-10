import 'dart:html';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500
                ),
                padding: EdgeInsets.all(20),
              ),
              onLongPress: (){
                print("Azmarul");
              } ,
              onPressed: (){
                print("johnny");
              }, child: Text("Send Email"),),
            IconButton(
              style: IconButton.styleFrom(
                iconSize: 20,
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.green,
              ),
              onPressed: (){}, icon: Icon(Icons.settings),),
            TextButton(onPressed: (){}, child: Text("Text Button")),
            OutlinedButton(onPressed: (){}, child: Text("Outline Button")),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
            style: TextStyle(
              color: Colors.black,
            ),
               decoration: InputDecoration(
                 // fillColor: Colors.cyan,
                 // filled: true,
                 hintText: "john@domain.com",
                 hintStyle: TextStyle(
                   color: Colors.black45,
                 ),
                 suffixIcon: Icon(Icons.email_outlined, color: Colors.red),
                 // prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                 label: Text("Email"),
                 border: OutlineInputBorder(),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide (color: Colors.purple),
                 ),
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: TextEditingController(),
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  // fillColor: Colors.cyan,
                  // filled: true,
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(
                    color: Colors.black45,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.red),
                  // prefixIcon: Icon(Icons.email_outlined, color: Colors.white),
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide (color: Colors.purple),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  onPressed: (){}, child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }

}