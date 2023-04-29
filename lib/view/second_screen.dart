import 'package:flutter/material.dart';
import 'package:practice_app/view/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdScreen(),
                    ),
                  );
                },
                child: Icon(
                  Icons.skip_next,
                  color: Colors.black,
                  size: 20,
                ),
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrange))),
          ),
        ],
      ),
    ));
  }
}
