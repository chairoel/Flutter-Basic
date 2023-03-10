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
    for (int i = 0; i < 20; i++) {
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
      body: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: null, child: Text("Tambah Data")),
            ElevatedButton(onPressed: null, child: Text("Hapus Data")),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgets,
        )
      ]),
    ));
  }
}
