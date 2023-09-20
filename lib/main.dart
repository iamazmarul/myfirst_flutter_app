// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//    MyApp({super.key});
//
//    bool _switch; false;
//    ThemeData _dark = ThemeData(brightness: Brightness.dark);
//    ThemeData _light = ThemeData(brightness: Brightness.light)
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Module 7",
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//       theme: ThemeData(
//         _switch ? _dark : _light,
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.red,
//             foregroundColor: Colors.white,
//           ),
//         ),
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         appBarTheme: AppBarTheme(
//           backgroundColor: Colors.pink,
//         )
//       ),
//       themeMode: ThemeMode.dark,
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(value: _switch, onChanged: (_newvalue){
//             setState((){
//               _switch = newvalue;
//             });
//             })
//           ],
//         ),
//       )
//     );
//   }
// }
