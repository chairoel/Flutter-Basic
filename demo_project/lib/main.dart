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
        // body: Container(
        //   color: Colors.red,
        //   //Membuat ukuran [width] pada widget [Container] menjadi 1/3 bagian dari layar
        //   width: MediaQuery.of(context).size.width / 3,
        //   //Membuat ukuran [height] pada widget [Container] menjadi 1/2 bagian dari layar
        //   height: MediaQuery.of(context).size.height / 2,
        // ),

        body: Center(
          child: (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: generateContainers)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: generateContainers),
        ));
  }

  List<Widget> get generateContainers {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
