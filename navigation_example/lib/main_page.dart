import 'package:flutter/material.dart';
import 'package:navigation_example/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                //[push] Akan memanggil Page berikut nya dan akan ditumpuk seperti "Stack"
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage(); //Page tujuan
                }));
              },
              child: Text("Go to Second Page"))),
    );
  }
}
