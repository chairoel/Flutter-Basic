import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Media Query"),
      ),
      body: Container(
        color: Colors.red,
        //Membuat ukuran [width] pada widget [Container] menjadi 1/3 bagian dari layar
        width: MediaQuery.of(context).size.width / 3,
        //Membuat ukuran [height] pada widget [Container] menjadi 1/2 bagian dari layar
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
