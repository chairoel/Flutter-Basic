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
          leading: Icon(
            // Biasa dipakai untuk "Logo" atau "Drawer"
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            // Widget yang biasa dipakai untuk judul, namun masih bisa pakai Widget yang lain seprti [Container]
            "AppBar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            // Biasanya terdiri dari beberapa [Icon Button]
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
          ],
          flexibleSpace: Container(
            // Bagian yang diluar {leading, title, actions, bottom} bisa digunakan untuk memanipulasi background
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff09ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
                image: DecorationImage(
                    image: AssetImage("assets/images/pattern.png"),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat)),
          )),
    ));
  }
}
