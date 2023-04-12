import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFA1A1A1),
                  ),
                ),
              ),
              const Expanded(
                child: VerticalDivider(
                  color: Color(0xFFA1A1A1),
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFA1A1A1),
                  ),
                ),
              ),
              const Expanded(
                child: VerticalDivider(
                  color: Color(0xFFA1A1A1),
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFA1A1A1),
                  ),
                ),
              ),
              const Expanded(
                child: VerticalDivider(
                  color: Color(0xFFA1A1A1),
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                ),
              ),
              Container(
                height: 55,
                width: 355,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color(0xFFA1A1A1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
