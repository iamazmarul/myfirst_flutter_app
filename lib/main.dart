import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment Module 7",
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
  final List<int> counters = [];
  List<Map<String, String>> products = [
    {"Name": "Products 1", "Price": "10"},
    {"Name": "Products 2", "Price": "20"},
    {"Name": "Products 3", "Price": "25"},
    {"Name": "Products 4", "Price": "30"},
    {"Name": "Products 5", "Price": "22"},
    {"Name": "Products 6", "Price": "11"},
    {"Name": "Products 7", "Price": "21"},
    {"Name": "Products 8", "Price": "40"},
    {"Name": "Products 9", "Price": "60"},
    {"Name": "Products 10", "Price": "77"},
    {"Name": "Products 11", "Price": "99"},
    {"Name": "Products 12", "Price": "100"},
  ];

  void _dialogBox(String itemCounter, String productNames) {
    showDialog(
        context: context,
        builder: (BuildContext Context) {
          return AlertDialog(
            title: Text("Congratulations!"),
            content: Text("You've bought $itemCounter $productNames"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Ok"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                while (counters.length <= index) {
                  counters.add(0);
                }
                ;
                final counter = counters[index];
                return ListTile(
                  title: Text("${product["Name"]}"),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Price: \$${product["Price"]}"),
                  ),
                  trailing: Column(
                    children: [
                      Text("Counter: $counter"),
                      ElevatedButton(
                        onPressed: () {
                          if (counter < 5) {
                            counters[index]++;
                            setState(() {});
                          }
                          ;
                          if (counter == 5) {
                            _dialogBox(counter.toString(), product["Name"]!);
                          }
                          ;
                        },
                        child: Text("Buy Now"),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(totalItems: counters),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  final List<int> totalItems;
  const CartScreen({super.key, required this.totalItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    int totalItemCount = 0;
    for (int i in widget.totalItems) {
      totalItemCount += i;
    }
    ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Total Product: $totalItemCount")],
        ),
      ),
    );
  }
}
