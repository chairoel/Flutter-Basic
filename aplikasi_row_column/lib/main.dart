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
          title: Text("Latihan Row dan Column"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, //#column akan mengatur secara vertical
            crossAxisAlignment: CrossAxisAlignment
                .start, //#column akan mengatur secara horizontal
            children: <Widget>[
              Text("data 1"),
              Text("data 2"),
              Text("data 3"),
              Text("data 4"),
              Row(
                children: <Widget>[
                  Text("data 5"),
                  Text("data 6"),
                  Text("data 7"),
                  Text("data 8"),
                ],
              )
            ]),
      ),
    );
  }
}
