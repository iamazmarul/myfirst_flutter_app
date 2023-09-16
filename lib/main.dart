import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Shopping List",
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.shopping_cart_rounded),
            title: Text("Apples"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.free_breakfast),
            title: Text("Bananas"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.breakfast_dining),
            title: Text("Bread"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.coffee),
            title: Text("Milk"),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.egg),
            title: Text("Eggs"),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
