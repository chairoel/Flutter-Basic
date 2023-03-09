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
  int number = 0;

  void addButton() {
    setState(() {
      // Mengubah tampilan atau UI sesuai dengan state yang ada saat ini
      number++;
    });
  }

  void resetNumber() {
    setState(() {
      // Mengubah tampilan atau UI sesuai dengan state yang ada saat ini
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 10 + number.toDouble()),
            ),
            ElevatedButton(
              onPressed: addButton,
              child: Text("Tambah Bilangan"),
            ),
            ElevatedButton(
                onPressed: resetNumber, child: Text("Reset Bilangan"))
          ],
        )),
      ),
    );
  }
}
