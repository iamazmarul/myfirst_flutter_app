import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Assignment Module 7",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> counters = [];
  List<Map<String, String>> products = [
    {"name": "products 1", "price": "100"},
    {"name": "products 2", "price": "280"},
    {"name": "products 3", "price": "300"},
    {"name": "products 4", "price": "400"},
    {"name": "products 5", "price": "499"},
    {"name": "products 6", "price": "600"},
    {"name": "products 7", "price": "700"},
    {"name": "products 8", "price": "850"},
    {"name": "products 9", "price": "900"},
    {"name": "products 10", "price": "780"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
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
                final counter = counters[index];

                return ListTile(
                  title: Text("${product["name"]}"),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Price: \$${product["price"]}"),
                  ),
                  trailing: Column(
                    children: [
                      Text("Counter: $counter"),
                      ElevatedButton(
                        onPressed: () {
                          if (counter < 5) {
                            counters[index]++;
                            setState(() {});
                          };
                          if (counter == 5) {
                            AlertDialog(

                            );
                          };
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
          // Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen(cartproducts: $counter)),);
        },
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  final String cartproducts;
  const CartScreen({super.key, required this.cartproducts});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Total Products")],
        ),
      ),
    );
  }
}
