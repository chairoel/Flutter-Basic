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
        appBar: AppBar(title: Text("Latihan Stack dan Align")),
        body: Stack(children: [
          Column(
            children: [
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Container(
                    color: Colors.white,
                  )),
                  Flexible(
                      child: Container(
                    color: Colors.black12,
                  )),
                ],
              )),
              Flexible(
                  child: Row(
                children: [
                  Flexible(
                      child: Container(
                    color: Colors.black12,
                  )),
                  Flexible(
                      child: Container(
                    color: Colors.white,
                  )),
                ],
              )),
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: Text(
                        "Ini adalah text yang ada di lapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Tambah"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black)),
          )
        ]),
      ),
    );
  }
}
