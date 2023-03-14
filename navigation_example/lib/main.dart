import 'package:flutter/material.dart';
import 'package:navigation_example/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Atur Page pertama yang akan running "Login Page"
    );
  }
}
