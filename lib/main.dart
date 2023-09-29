import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: isPortrait
              ? PortraitLayout()
              : LandscapeLayout(),
        ),
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width/2,
            backgroundImage: NetworkImage("https://cdn.mos.cms.futurecdn.net/JxJ548FZEJo2SnDQqK6qK7.jpg"), // Replace with your profile image
          ),
          SizedBox(height: 20.0),
          Text(
            'Md. Azmarul Islam',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
          ),
          SizedBox(height: 20.0),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 6, // Number of images
            itemBuilder: (context, index) {
              return Image.network("https://cdn.mos.cms.futurecdn.net/JxJ548FZEJo2SnDQqK6qK7.jpg", fit: BoxFit.cover);
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
        children: [
          Container(
            alignment: Alignment.topCenter, // Align the CircleAvatar to the top
            child: CircleAvatar(
              radius: screenWidth * 0.2,
              backgroundImage: NetworkImage("https://cdn.mos.cms.futurecdn.net/JxJ548FZEJo2SnDQqK6qK7.jpg"),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Md. Azmarul Islam',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10.0),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Image.network("https://cdn.mos.cms.futurecdn.net/JxJ548FZEJo2SnDQqK6qK7.jpg", fit: BoxFit.cover);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
