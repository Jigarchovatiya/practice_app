import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool radioColorData = true;

  // Initial radio list tile Value
  int radioListColorData = 1;
  List<int> radioListColorItems = [44, 43, 42, 41, 40];

  bool radioSizeData = true;

  // Initial radio list tile Value
  int radioListSizeData = 1;
  List<int> radioListSizeItems = [44, 43, 42, 41, 40];

  List colorList = [
    const Color(0xFFFF0000),
    const Color(0xFFA52A2A),
    const Color(0xFF008000),
    const Color(0xFF000000),
    const Color(0xFFFFFFFF),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              //   child: DropdownButton(
              //     value: sizeData,
              //     isExpanded: true,
              //     items: sizeList
              //         .map((value) => DropdownMenuItem(
              //               value: value['value'],
              //               child: Text(value['data']),
              //             ))
              //         .toList(),
              //     onChanged: (value) {
              //       debugPrint(value.toString());
              //       sizeData = value.toString();
              //       setState(() {});
              //     },
              //   ),
              // ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 380,
                  width: 354,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Color(0x1A4A4A4A), offset: Offset(0, 15), blurRadius: 40, spreadRadius: 0, blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Select Size",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xFFF5F5F5),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: SizedBox(
                          height: 255,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: radioListSizeItems.length,
                            itemBuilder: (context, index) {
                              return Transform.scale(
                                scale: 1.2,
                                child: RadioListTile(
                                  activeColor: const Color(0xFFFFA500),
                                  value: radioListSizeItems[index],
                                  groupValue: radioListSizeData,
                                  onChanged: (value) {
                                    debugPrint("value  --> $value");
                                    radioListSizeData = value!;
                                    setState(() {});
                                  },
                                  title: Text("${radioListSizeItems[index]}"),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  height: 380,
                  width: 354,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(color: Color(0x1A4A4A4A), offset: Offset(0, 15), blurRadius: 40, spreadRadius: 0, blurStyle: BlurStyle.outer),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Select Color",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_up,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xFFF5F5F5),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: SizedBox(
                          height: 255,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: radioListColorItems.length,
                            itemBuilder: (context, index) {
                              return Transform.scale(
                                scale: 1.2,
                                child: RadioListTile(
                                  activeColor: const Color(0xFFFFA500),
                                  value: radioListColorItems[index],
                                  groupValue: radioListColorData,
                                  onChanged: (value) {
                                    debugPrint("value  --> $value");
                                    radioListColorData = value!;
                                    setState(() {});
                                    debugPrint("radiolist ---> $radioListColorData");
                                  },
                                  title: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(color: Color(0x26000000), blurRadius: 20, offset: Offset(0, 10), spreadRadius: 0, blurStyle: BlurStyle.normal),
                                        ],
                                      ),
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: colorList[index],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 180),
            ],
          ),
        ),
        bottomSheet: SizedBox(
          height: 120,
          child: Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 130),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFA500),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "Go to shop",
                  style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
