import 'package:flutter/material.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({Key? key}) : super(key: key);

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Data"),
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
