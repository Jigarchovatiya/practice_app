import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataMap extends StatefulWidget {
  const LocalDataMap({Key? key}) : super(key: key);

  @override
  State<LocalDataMap> createState() => _LocalDataMapState();
}

class _LocalDataMapState extends State<LocalDataMap> {
  String data = "information";
  SharedPreferences? prefers;
  Map<String, dynamic> mapData = {"title": 'John Wick', "Name": 'Jonathan', "Car": 'Mustang GT', "year": 30, "kill": '2.45K people'};
  Map<String, dynamic> decodeMapData = {};

  instance() async {
    prefers = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    instance();
    super.initState();
  }

  setData() {
    prefers!.setString(data, jsonEncode(mapData));
    debugPrint("Data is Set -->");
  }

  getData() {
    dynamic encodeMap = prefers!.getString(data)!;
    decodeMapData = jsonDecode(encodeMap)!;
    setState(() {});
    debugPrint("data is get --> $decodeMapData");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                  "Setting Data",
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
                "Decoded Map Data:$decodeMapData",
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
