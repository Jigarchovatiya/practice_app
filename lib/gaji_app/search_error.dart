import 'package:flutter/material.dart';

class SearchError extends StatefulWidget {
  const SearchError({Key? key}) : super(key: key);

  @override
  State<SearchError> createState() => _SearchErrorState();
}

class _SearchErrorState extends State<SearchError> {
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
              const BackButton(),
              const SizedBox(height: 30),
              Center(
                child: Container(
                  height: 50,
                  width: 354,
                  padding: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: const Color(0xFFD3D3D3)),
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(110),
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Boots", style: TextStyle(color: Color(0xFF1E1E1E), fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 50),
                child: Image.asset("assets/gaji/second.png", height: 285),
              ),
              const Center(
                child: Text(
                  "We couldn’t find what you are looking for.",
                  style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
