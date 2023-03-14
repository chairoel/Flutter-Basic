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
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.grey;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  // [Draggable] Widget yang akan dijadikan "sumber" data
                  data: color1,
                  child: SizedBox(
                    //Widget yang muncul ketika Object tidak di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    //Widget yang muncul ketika object di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    //Widget yang dapat bergerak ketika object di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  // [Draggable] Widget yang akan dijadikan "sumber" data
                  data: color2,
                  child: SizedBox(
                    // [child] Widget yang muncul ketika Object tidak di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    // [childWhenDragging] Widget yang muncul ketika object di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    // [feedback] Widget yang dapat bergerak ketika object di "drag"
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              // [DragTarget] Widget yang akan dijadikan "target" data
              onWillAccept: (data) => true,
              // [onWillAccept] akan diisi dengan fungsi yang akan mengecek,
              //apakah data yang di dapat akan di terima atau tidak
              onAccept: (data) {
                // [onAccept] fungsi yang akan dieksekusi ketika data menerima data
                isAccepted = true;
                targetColor = data;
              },
              builder: (context, candidateData, rejectedData) {
                // [builder] fungsi yang akan dipakai untuk membuat widget drag target disini.
                return (isAccepted)
                    ? SizedBox(
                        //Kondisi ketika nilai isAccepted "true"
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        //Kondisi ketika nilai isAccepted "false"
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
