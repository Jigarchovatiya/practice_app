import 'package:flutter/material.dart';
import 'package:practice_app/first_screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        actions: [
          CloseButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return const FirstScreen();
                },
              ), (route) => false);
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => FirstScreen(),
              //     ),);
            },
          )
        ],
        title: const Text("Wel_come"),
        centerTitle: true,
      ),
    ));
  }
}
