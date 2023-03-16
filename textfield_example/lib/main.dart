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
  //Mengontrol data yang ada pada [TextField]
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Test Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                // obscureText: true,  //Jenis input Password
                maxLength: 10, //Maximum panjang karakter
                onChanged: (value) {
                  //Menyimpan data yang ada pada [TextField] di variabel [value]
                  setState(() {});
                },
                controller: controller,
              ),
              //Menampilkan data yang sudah di simpan pada [TextField]
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
