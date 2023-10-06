import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedSize = "";

  void showSnackbar(String size) {
    setState(() {
      selectedSize = size;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
      ),
    );
  }

  ElevatedButton colorButton(String size) {
    return ElevatedButton(
      onPressed: () {
        showSnackbar(size);
      },
      child: Text(size, style: TextStyle(
        fontSize: 18,
      ),),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.zero,
        minimumSize: Size(90, 45),
        backgroundColor: selectedSize == size ? Colors.orange : Colors.black38,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Size Selector"),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 8.0,
          children: [
            colorButton("S"),
            colorButton("M"),
            colorButton("L"),
            colorButton("XL"),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: colorButton("XXL"),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: colorButton("XXXL"),
            ),
          ],
        ),
      ),
    );
  }
}
