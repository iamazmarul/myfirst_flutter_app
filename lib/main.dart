import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice Problem"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 25, right: 25),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.cyan),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(
                              Icons.warehouse_rounded,
                              size: 28,
                            ),
                            title: Text(
                              "Md Azmarul Islam",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Flutter Developer"),
                            trailing: Icon(Icons.verified),
                          );
                        },
                      separatorBuilder: (context, index){
                          return Divider();
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.cyan),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                    ),
                    Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Icon(
                                Icons.warehouse_rounded,
                                size: 28,
                              ),
                              title: Text(
                                "Md Azmarul Islam",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("Flutter Developer"),
                              trailing: Icon(Icons.verified),
                            );
                          },
                        separatorBuilder: (context, index){
                            return Divider();
                        }
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
