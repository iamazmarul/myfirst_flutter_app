import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> selectionList = List.filled(8, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selection Screen"),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Item ${index + 1}"),
              tileColor: selectionList[index] ? Colors.blue : null,
              onTap: () {
                setState(() {
                  selectionList[index] = !selectionList[index];
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int selectionCount = selectionList.where((item) => item).length;
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Selected Items"),
                  content: Text("Number of selected items: $selectionCount"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Close"))
                  ],
                );
              });
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
