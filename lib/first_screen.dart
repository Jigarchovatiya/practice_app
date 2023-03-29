import 'package:flutter/material.dart';
import 'package:practice_app/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              )),
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color(0xFF238D8D),
            ),
          ),
          child: const Text("Next Page ->"),
        ),
      ),
    ));
  }
}
