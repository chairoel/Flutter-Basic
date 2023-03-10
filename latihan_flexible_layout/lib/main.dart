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
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.amber,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.redAccent,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(4),
                          color: Colors.cyanAccent,
                        )),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.yellowAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueAccent,
                )),
          ],
        ),
      ),
    );
  }
}
