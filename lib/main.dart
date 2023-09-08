
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget{
  final List<String> dataList = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Johnny'), // App title in the center
        actions: <Widget>[
          // Icons aligned to the right
          IconButton(
            icon: Icon(Icons.abc), // Icon for the first action
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
          IconButton(
            icon: Icon(Icons.do_not_disturb_on_total_silence), // Icon for the second action
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
  //     body: Column(
  //       children: [
  //         Text(
  // "Home Page",
  //           style: TextStyle(
  //             color: Colors.cyan,
  //             fontSize: 18,
  //           ),
  //         ),
  //       ],
  //     ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your button click logic here
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Background color
            onPrimary: Colors.white, // Text color
            padding: EdgeInsets.all(20), // Padding around the button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            textStyle: TextStyle(
              fontSize: 20, // Text size
            ),
            shadowColor: Colors.grey, // Shadow color
            elevation: 5, // Elevation (shadow depth)
          ),
          child: Text('Stylish Button'),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1336424559189270528/hs4a6Zit_400x400.jpg"),
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                // Handle home button tap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Handle settings button tap
              },
            ),
      ],
    ),
    ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Azmarul Islam Johnny"),
                accountEmail: Text("info@iamazmarul.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1336424559189270528/hs4a6Zit_400x400.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.ice_skating),
              onTap: (){

              },
            )
          ],
        ),
      ),
    );
  }
}
