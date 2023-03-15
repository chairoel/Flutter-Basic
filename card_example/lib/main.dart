import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(12),
          child: ListView(
            children: [
              buildCard(Icons.adb, "Serangga Android"),
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.youtube_searched_for, "Reload"),
            ],
          ),
        ),
      ),
    );
  }

  // Method Membuat Card dengan parameter icon dan text
  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 6,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Icon(
              iconData,
              color: Colors.green,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
