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
        appBar: AppBar(
          title: Text("Latihan Text Style"),
        ),
        body: Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
                fontFamily: "Poppins",
                fontStyle: FontStyle.italic,
                fontSize: 30,
                decoration: TextDecoration.overline,
                decorationColor: Colors.blueAccent,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
            // style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
