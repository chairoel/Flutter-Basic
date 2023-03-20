import 'package:flutter/material.dart';

class DraggblePage extends StatefulWidget {
  const DraggblePage({super.key});

  @override
  State<DraggblePage> createState() => _DraggblePageState();
}

class _DraggblePageState extends State<DraggblePage> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color colorTarget = Colors.grey;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggble Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                childWhenDragging: circularObject(50, colorTarget, false),
                feedback: circularObject(50, color1, true),
                child: circularObject(50, color1, false),
              ),
              Draggable<Color>(
                data: color2,
                childWhenDragging: circularObject(50, colorTarget, false),
                feedback: circularObject(50, color2, true),
                child: circularObject(50, color2, false),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (data) => true,
            onAccept: (data) {
              isAccepted = true;
              colorTarget = data;
            },
            builder: (context, candidateData, rejectedData) {
              return (isAccepted)
                  ? circularObject(100, colorTarget, false)
                  : circularObject(100, Colors.black26, false);
            },
          )
        ],
      ),
    );
  }

  SizedBox circularObject(double size, Color color, bool opacity) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: (opacity) ? color.withOpacity(0.7) : color,
        shape: const StadiumBorder(),
        elevation: 3,
      ),
    );
  }
}
