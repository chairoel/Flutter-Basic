import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Mambuat Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: StadiumBorder(),
              ),
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
            //Custom button Sendiri
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2, // Bayanagn Button
              child: Container(
                // Ukuran Button
                // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink], //Warna Gradien
                      begin: Alignment.topCenter, // Star sudut Gradien
                      end: Alignment.bottomCenter), // Star sudut Gradien
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  //Effect Click pada Button
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    splashColor: Colors.amber, // Warna ketika di tekan
                    child: Center(
                      child: Text(
                        "My Button",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //Code Orang lain
            DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blueAccent,
                      Colors.redAccent,
                      Colors.purpleAccent
                      //add more colors
                    ]),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color:
                              Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                          blurRadius: 5) //blur radius of shadow
                    ]),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      disabledBackgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      //make color or elevated button transparent
                    ),
                    onPressed: () {
                      print("You pressed Elevated Button");
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 18,
                        bottom: 18,
                      ),
                      child: Text("Press This Button"),
                    ))),
            MyElevatedButton(
              gradient: LinearGradient(colors: [Colors.black, Colors.red]),
              // width: double.infinity,
              onPressed: () {},
              borderRadius: BorderRadius.circular(20),
              child: Text('SIGN IN My button'),
            )
          ],
        ),
      ),
    );
  }
}

//Code Orang lain
class MyElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const MyElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(0);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
