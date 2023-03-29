import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150, bottom: 50),
                child: Image.asset("assets/gaji/three.png", height: 270),
              ),
              const Center(
                child: Text(
                  "Purchase Successful",
                  style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 21),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Track Order",
                      style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    textAlign: TextAlign.center,
                    "Go back home",
                    style: TextStyle(color: const Color(0xFFFFA500), fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 15),
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
