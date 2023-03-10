import 'dart:math';
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
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animated Container"),
        ),
        body: Center(
            child: GestureDetector(
          //Mendeteksi perilaku/actiton tertentu pada widget
          onTap: () {
            //contoh action/prilaku (*onTap()*)
            setState(() {});
          },
          child: AnimatedContainer(
            //Memberikan animasi secara otomatis untuk setiap perubahan terhadap dirinya
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            duration: Duration(milliseconds: 500),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        )),
      ),
    );
  }
}
