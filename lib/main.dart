import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment Module 5 ",
      debugShowCheckedModeBanner: true,
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  /// Custom List
  // List <String> students = [
  //   "Johnny",
  //   "Naim",
  //   "Zahid",
  //   "Rohan",
  //   "Ashiq",
  //   "Daim",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      // body: Scrollbar(
      //   // list view builder/Sparetor
      //   //   grid view builder
      //   /// Navigation
      //   /// Navigator 1 Simple, 2 Gomplex
      //   /// Router Package Getx
      //   /// push and pop
      //   /// pushreplace
      //   /// pushandreomveuntil
      //   // child: GridView.builder( /// Grid View Builder
      //   //   itemCount: 20,
      //   //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   //     itemBuilder: (context, index){
      //   //       return Column(
      //   //         children: [
      //   //           Text(index.toString()),
      //   //           Icon(Icons.add_a_photo_outlined),
      //   //         ],
      //   //       );
      //   //     },
      //   // ),
      //   // child: ListView.separated( /// List View Builder / Separator Builder
      //   //   itemCount: 50,
      //   //     itemBuilder: (context, index){
      //   //   return ListTile(
      //   //     title: Text(index.toString()),
      //   //   );
      //   // },
      //   //   separatorBuilder: (context, index){
      //   //     return Column(
      //   //       children: [
      //   //         Text(index.toString()),
      //   //         Divider(
      //   //           color: Colors.deepOrangeAccent,
      //   //           indent: 15,
      //   //           endIndent: 15,
      //   //             thickness: 2,
      //   //         ),
      //   //       ],
      //   //     );
      //   //   }
      //   // ),
      //   child: ListView.separated(
      //     itemCount: students.length,
      //       itemBuilder: (context, index){
      //     return ListTile(
      //       title: Text(students[index]),
      //     );
      //   },
      //   separatorBuilder: (context, index){
      //     return  Divider();
      //   },
      //   ),
      // ),
      ///Route 1
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Home Page",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => settings()
                ),
                );
              },
              child: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
///Route 2
class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Settings Page",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => abouts()),);
              },
              child: Text("Abouts"),
            ),
          ],
        ),
      ),
    );
  }
}
///Route 3
class abouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abouts"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Abouts Page",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>homePage(),), (route) => false);
              },
              child: Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}

