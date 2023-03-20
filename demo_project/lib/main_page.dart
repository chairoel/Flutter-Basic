import 'package:demo_project/custom_botton.dart';
import 'package:demo_project/draggable_page.dart';
import 'package:demo_project/media_query_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            goToButton(context, "Learn Media Query", LearnMediaQuery()),
            goToButton(context, "Learn Draggble", DraggblePage()),
            goToButton(context, "Learn Custom Button", CustomButton()),
          ],
        ),
      ),
    );
  }

  Container goToButton(BuildContext context, String text, Widget goTo) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12), //Margin pada button
      child: SizedBox(
        //Menjadikan width pada button memiliki lebar full layar
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            //[push] Akan memanggil Page berikut nya dan akan ditumpuk seperti "Stack"
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return goTo; //Page tujuan
            }));
          },
          child: Text(text),
        ),
      ),
    );
  }
}
