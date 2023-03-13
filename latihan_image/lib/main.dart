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
          title: Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            // child: Image(
            //   //Data dari Internet langsung
            //   image: NetworkImage(
            //     "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            //   ),
            //   fit: BoxFit.contain,
            //   repeat: ImageRepeat.repeat,
            // ),
            // child: Image.asset('images/image1.jpg'), //Data dari assets
            child: Image(
              // Data dari Assets
              image: AssetImage("images/image1.jpg"),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
