import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   home: HomeScreen(),
   title: "Mod 6 App",
 );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       GestureDetector(
      //         onTap: (){
      //           print("Johnny");
      //         },
      //         onLongPress: (){},
      //         child: Text("Hello Johnny"),
      //       ),
      //       InkWell(
      //         onTap: (){
      //           print("Johnny");
      //         },
      //         onLongPress: (){},
      //         child: Text("Hello Johnny"),
      //       ),
      //     ],
      //   ),
      // ),
      // body: ListView(
      //   // scrollDirection: Axis.horizontal,
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Text("Johnny"),
      //     Text("Johnny"),
      //     Text("Johnny"),
      //     Text("Johnny"),
      //   ],
      // ),
      // body: Scrollbar( /// Scrollbar For Add Scroll in Column and Row
      //   radius: Radius.circular(10),
      //   thickness: 30,
      //   child: SingleChildScrollView( /// SingleChildScrollView For column/ROw scroll option add
      //   child: Column(
      //     children: [
      //       Text("Johnny"),
      //       Text("Johnny"),
      //     ],
      //   ),
      //   ),
      // ),
      // body: Scrollbar(
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         title: Text("User Name"),
      //         subtitle: Text("info@iamazmarul.com"),
      //         leading: Icon(Icons.ice_skating),
      //         trailing: Icon(Icons.ice_skating),
      //       ),
      //       Divider(
      //         height: 10,
      //         thickness: 1,
      //         color: Colors.indigoAccent,
      //         endIndent: 15,
      //         indent: 15,
      //       ),
      //       ListTile(
      //         title: Text("User Name"),
      //         subtitle: Text("info@iamazmarul.com"),
      //         leading: Icon(Icons.ice_skating),
      //         trailing: Icon(Icons.ice_skating),
      //       ),
      //       Text("Johnny"),
      //     ],
      //   ),
      // ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        children: [
          Icon(Icons.confirmation_number_sharp),
          Icon(Icons.confirmation_number_sharp),
          Icon(Icons.confirmation_number_sharp),
          Icon(Icons.confirmation_number_sharp),
        ],
      ),
    );
  }
}