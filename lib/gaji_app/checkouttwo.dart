import 'package:flutter/material.dart';

class CheckOutTwo extends StatefulWidget {
  const CheckOutTwo({Key? key}) : super(key: key);

  @override
  State<CheckOutTwo> createState() => _CheckOutTwoState();
}

class _CheckOutTwoState extends State<CheckOutTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const BackButton(color: Colors.black),
          title: const Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xFFFFA500),
                    foregroundColor: Colors.white,
                    child: Text("1"),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFFFFA500),
                      thickness: 2,
                    ),
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xFFFFA500),
                    foregroundColor: Colors.white,
                    child: Text("2"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              height: 120,
              width: 355,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Color(0x1A7C7C7C), offset: Offset(0, 1), blurRadius: 20, spreadRadius: 0, blurStyle: BlurStyle.outer),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/gaji/shoes.png",
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lorem ipsum hobel\noligt nesm dejun\nLadies Boot",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "35 EU",
                        style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 12, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    "\$841.00",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              height: 120,
              width: 355,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Color(0x1A7C7C7C), offset: Offset(0, 1), blurRadius: 20, spreadRadius: 0, blurStyle: BlurStyle.outer),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/gaji/sunscreen.png",
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lorem ipsum hobel\noligt nesm dejun\nLadies Boot",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "10 ML",
                        style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 12, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  const Text(
                    "\$841.00",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Card Number",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      Text(
                        "5153 7455 1285 8238",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Name",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      Text(
                        "Dolores Chambers",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Expiry Date",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      Text(
                        "07/24",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "CVC/CVV",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                      ),
                      Text(
                        "284",
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 137),
                decoration: BoxDecoration(
                  color: const Color(0xFF9B4100),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Change Card",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 115),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFA500),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Proceed to Payment",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
