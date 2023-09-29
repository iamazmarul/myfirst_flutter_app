import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Live Test M 8",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
      ),
      body: SingleChildScrollView(
        child: isPortrait ?  PortraitLayout() : LandscapeLayout(),
      ),
    );
  }
}


class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10, // Replace with your desired number of items
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150, // This height might be too much for typical portrait layout
                  alignment: Alignment.center,
                  color: Colors.white70,
                  child: Image.network(
                    "https://via.placeholder.com/150", width: 150, height: 150,
                  )
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            alignment: Alignment.topCenter,
            color: Colors.white70,
            child: Image.network(
              "https://via.placeholder.com/150",
              width: 150,
              height: 150,
            ),
          ),
        );
      },
    );
  }
}