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
                decoration: InputDecoration(
                  //Widget yang akan mendekorasi [TextField]
                  filled: true, //Aktivasi fiil pada [TextField]
                  fillColor: Colors.blue[50],
                  icon: Icon(Icons
                      .add_alert), //Icon yang akan muncul diluar [TextField]
                  // prefix: Container( //Widget yang muncul sebelum Value dari [TextField]
                  //   width: 5
                  //   height: 5,
                  //   color: Colors.red,
                  // ),
                  suffix: Container(
                    //Widget yang muncul setelah Value dari [TextField]
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w700),
                  labelText:
                      "Nama Lengkap", //Widget yang akan tampil diatas [TextField]
                  hintText: "Nama Lengkapnya Loh",
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                      //Widget yang menampilkan border dari [TextField]
                      borderRadius: BorderRadius.circular(12)),
                ),
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
