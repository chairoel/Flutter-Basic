import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Text(
        "Data ke-" + i.toString(),
        style: TextStyle(fontSize: 30),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan ListView"),
      ),
      body: Column(children: widgets),
    ));
  }
}
