import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment"),
      ),
      body: Column(
        children: [
          Column(
            children: [
              TextField(),
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(todoList[index].toString()),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
