import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> cartItems = [];
  double totalPrice = 0.0;

  List<Map<String, String>> products = [
    {
      "Name": "T-Shirt",
      "Price": "33",
      "Color": "Black",
      "Size": "L",
      "Image":
          "https://media.istockphoto.com/id/1125110782/photo/young-man-isolated-on-gray-textured-wall-smiling-while-pointing-with-index-finger-to-black-t.jpg?s=1024x1024&w=is&k=20&c=34_6_kAqQoLeue146VpaFAfJqbh9ZT7zda0NESBPUgk=&p=1"
    },
    {
      "Name": "Jeans",
      "Price": "79",
      "Color": "Blue",
      "Size": "M",
      "Image":
          "https://media.istockphoto.com/id/527236518/photo/mans-legs.jpg?s=1024x1024&w=is&k=20&c=048I3alxFMmacC6VW6af2_PF9SE_ELXjHeuZqYWChN8=&p=1"
    },
    {
      "Name": "Shoes",
      "Price": "100",
      "Color": "Yellow",
      "Size": "XL",
      "Image":
          "https://media.istockphoto.com/id/171224469/photo/canvas-shoes.jpg?s=1024x1024&w=is&k=20&c=6xY77QMkIoDSgDcWvt-5u6Et40tmB6d6dST6VrksT2U=&p=1"
    },
  ];

  @override
  void initState() {
    super.initState();
    cartItems = List<int>.generate(products.length, (index) => 1);
    totalPrice = 0.0;
    for (int index = 0; index < cartItems.length; index++) {
      totalPrice += double.parse(products[index]["Price"] ?? "0") * cartItems[index];
    }
  }

  ElevatedButton buildAddToCartButton(int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          cartItems[index]++;
          totalPrice += double.parse(products[index]["Price"] ?? "0");
        });
      },
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(8),
        shape: const CircleBorder(),
      ),
      child: const Icon(
        Icons.add,
        size: 20,
        color: Colors.black54,
      ),
    );
  }

  ElevatedButton buildRemoveFromCartButton(int index) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (cartItems[index] > 1) {
            cartItems[index]--;
            totalPrice -= double.parse(products[index]["Price"] ?? "0");
          }
        });
      },
      style: ElevatedButton.styleFrom(
        elevation: 5,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(8),
        shape: const CircleBorder(),
      ),
      child: const Icon(
        Icons.remove,
        size: 20,
        color: Colors.black54,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFAFAFAFA),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Bag",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 3.5,
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Image.network(
                            products[index]["Image"] ?? "",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      products[index]["Name"] ?? "",
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.more_vert,
                                      color: Colors.black45,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          "Color: ",
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                        Text(
                                          products[index]["Color"] ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "Size: ",
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                        Text(
                                          products[index]["Size"] ?? "",
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              buildRemoveFromCartButton(index),
                                            ],
                                          ),
                                          Builder(
                                            builder: (context) {
                                              return Text(
                                                  "${cartItems[index]}");
                                            },
                                          ),
                                          Row(
                                            children: [
                                              buildAddToCartButton(index),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${products[index]["Price"] ?? ""}\$ ",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, bottom: 10, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Total Amount:",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${totalPrice.toStringAsFixed(0)}\$",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  bottom: 8,
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                              'Congratulations! Your order has been placed.'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD50000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text("CHECK OUT"),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
