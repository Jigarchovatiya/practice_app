import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../rec/constant/constant.dart';

class LocalDataMap extends StatefulWidget {
  const LocalDataMap({Key? key}) : super(key: key);

  @override
  State<LocalDataMap> createState() => _LocalDataMapState();
}

class _LocalDataMapState extends State<LocalDataMap> {
  SharedPreferences? prefers;
  List<String> items = [];
  Map<String, dynamic> data = {"title": 'John Wick\n', "Name": 'Jonathan\n', "Car": 'Mustang GT\n', "year": "${30}\n", "kill": '2.45K people'};
  String details = "";
  String decodeMap = "";

  instance() async {
    prefers = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    instance();
    super.initState();
  }

  setData() async {
    prefers!.setStringList(Constant.items, <String>["Jigar", "Jay", "Harshil", "Tushar"]);
    prefers!.setString(Constant.data, jsonEncode(data));
    debugPrint("Data is Set -->");
  }

  getData() {
    items = prefers!.getStringList(Constant.items)!;
    details = prefers!.getString(
      Constant.data,
    )!;

    var encodeMap = prefers!.getString(Constant.data)!;
    Map<String, dynamic> decodeMap = jsonDecode(encodeMap)!;

    setState(() {});

    debugPrint("Data is get --> $items");
    debugPrint("data is get --> $details");
    debugPrint("data is get --> $decodeMap");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Storage Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: setData,
                child: const Text(
                  "Set Data",
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              ElevatedButton(
                onPressed: getData,
                child: const Text(
                  "Get Data",
                ),
              ),
              Text(
                "items:$items\n"
                "data:$details"
                "decodeMap:$decodeMap",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
