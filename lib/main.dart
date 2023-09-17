import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "Module 6 Assignment",
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  homePage({super.key});

  final List dogsImage = [
    "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg",
    "https://hips.hearstapps.com/hmg-prod/images/best-guard-dogs-1650302456.jpeg",
    "https://images.pexels.com/photos/257519/pexels-photo-257519.jpeg",
    "https://hips.hearstapps.com/hmg-prod/images/best-guard-dogs-1650302456.jpeg",
    "https://images.pexels.com/photos/257519/pexels-photo-257519.jpeg",
    "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg",
  ];

  MySnackbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Welcome to My Photo Gallery!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for photos...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: dogsImage.length,
                  itemBuilder: (context, index) {
                    final dogsImages = dogsImage[index];
                    return GestureDetector(
                      onTap: () {
                        MySnackbar("Photo $index", context);
                      },
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Image.network(dogsImages, height: 90),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text("Photos $index",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ],
            ),
            Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          "https://hips.hearstapps.com/hmg-prod/images/best-guard-dogs-1650302456.jpeg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text("Photo 1"),
                      subtitle: Text("Image Details"),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          "https://images.pexels.com/photos/257519/pexels-photo-257519.jpeg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text("Photo 1"),
                      subtitle: Text("Image Details"),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: ClipOval(
                        child: Image.network(
                          "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text("Photo 1"),
                      subtitle: Text("Image Details"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50, // Width of the circular background
                  height: 50, // Height of the circular background
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue, // Background color of the circle
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(Icons.cloud_upload,
                          size: 20, color: Colors.white), // Upload icon
                      onPressed: () {
                        MySnackbar("Photos Uploaded Successfully!", context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}