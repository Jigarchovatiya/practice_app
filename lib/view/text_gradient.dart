import 'package:flutter/material.dart';

import '../res/common/text_gradient_common.dart';

class TextGradient extends StatelessWidget {
  const TextGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Gradient Text Example'),
        ),
        body: const Center(
          child: GradientText(
            text: 'Hello Developer !!!',
            gradient: LinearGradient(
              colors: [
                Colors.orangeAccent,
                Colors.orangeAccent,
                Colors.white,
                Colors.white,
                Colors.blueAccent,
                Colors.white,
                Colors.white,
                Colors.green,
                Colors.green,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            fontSize: 36.0,
          ),
        ),
      ),
    );
  }
}
