import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final double fontSize;

  const GradientText(
      {super.key,
      required this.text,
      required this.gradient,
      this.fontSize = 24.0});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors
              .white, // This color won't be used, as the shader mask determines the color
        ),
      ),
    );
  }
}
