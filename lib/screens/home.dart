import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> cartItems = [];

  List<Map<String, String>> products = [
    {
      "Name": "Products 1",
      "Price": "10",
      "Color": "Black",
      "Size": "L",
      "Image":
          "https://images.pexels.com/photos/440320/pexels-photo-440320.jpeg?cs=srgb&dl=pexels-vedant-sharma-440320.jpg"
    },
    {
      "Name": "Products 2",
      "Price": "20",
      "Color": "Blue",
      "Size": "M",
      "Image":
          "https://images.pexels.com/photos/51383/photo-camera-subject-photographer-51383.jpeg?cs=srgb&dl=pexels-pixabay-51383.jpg"
    },
    {
      "Name": "Products 3",
      "Price": "33",
      "Color": "Yellow",
      "Size": "XL",
      "Image":
          "https://images.pexels.com/photos/3999538/pexels-photo-3999538.jpeg?cs=srgb&dl=pexels-gantas-vai%C4%8Diul%C4%97nas-3999538.jpg"
    },
    {
      "Name": "Products 4",
      "Price": "48",
      "Color": "Green",
      "Size": "XXL",
      "Image":
          "https://images.pexels.com/photos/440320/pexels-photo-440320.jpeg?cs=srgb&dl=pexels-vedant-sharma-440320.jpg"
    },
  ];

  @override
  void initState() {
    super.initState();
    cartItems = List<int>.generate(products.length, (index) => 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFAFAFAFA),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 5,
                          width: MediaQuery.of(context).size.width / 5,
                          color: Colors.deepOrange,
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
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.more_vert),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                            "Color: ${products[index]["Color"] ?? ""} "),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            "Size: ${products[index]["Size"] ?? ""}"),
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
                                      flex: 3, // Adjust the flex values as needed
                                      child: Row(
                                        children: [
                                          // First Row on the left side
                                          Row(
                                            children: [
                                              Container(
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if (cartItems[index] > 0) {
                                                        cartItems[index]--;
                                                      }
                                                    });
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    elevation: 5,
                                                    backgroundColor: Colors.white,
                                                    padding: EdgeInsets.all(13),
                                                    shape: CircleBorder(),
                                                  ),
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: 22,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          // Second Row on the left side
                                          Row(
                                            children: [Text("${cartItems[index]}")],
                                          ),
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    cartItems[index]++;
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 5,
                                                  backgroundColor:
                                                  Colors.white, // Button color
                                                  padding:
                                                  EdgeInsets.all(13), // Button padding
                                                  shape: CircleBorder(), // Make it circular
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  size: 22,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text( "${products[index]["Price"] ?? ""}\$ ",style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),),
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
              Container(
                child: ElevatedButton(onPressed: (){}, child: Text("CHECK OUT"),
                style: ElevatedButton.styleFrom(

                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}
