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
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          margin: EdgeInsets.all(12),
          child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              //membuat widget yg dapat di modifikasi seperti membuat widget dengan background gardient
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.blueAccent,
                    Color.fromARGB(255, 13, 195, 149)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
