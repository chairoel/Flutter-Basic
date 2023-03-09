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
  String massage = "Ini adalah Text";

  // void pressedButton() { // method biasa yang bisa di panggil di beberapa tempat
  //   setState(() {
  //     massage = "Tombol sudah ditekan";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(massage),
            ElevatedButton(
              onPressed: () {
                // Anonymous method: method yg memang tidak akan pernah
                // di panggil di tempat lain dan hanya disini saja,
                // untuk mempersingkat code
                setState(() {
                  massage = "Tombol sudah ditekan";
                });
              },
              child: Text("Tekan saya"),
            )
          ],
        )),
      ),
    );
  }
}
