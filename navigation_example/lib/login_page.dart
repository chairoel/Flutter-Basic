import 'package:flutter/material.dart';
import 'package:navigation_example/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                //[pushReplacement] Akan Menggantikan Page ke page tujuan
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return MainPage(); //Page tujuan
                }));
              },
              child: Text("Login"))),
    );
  }
}
