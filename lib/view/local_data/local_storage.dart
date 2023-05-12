// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../rec/constant/constant.dart';
//
// class LocalStorage extends StatefulWidget {
//   const LocalStorage({Key? key}) : super(key: key);
//
//   @override
//   State<LocalStorage> createState() => _LocalStorageState();
// }
//
// class _LocalStorageState extends State<LocalStorage> {
//   SharedPreferences? prefers;
//
//   int counter = 0;
//   double decimal = 1.0;
//   bool repeat = true;
//   String action = " ";
//   List<String> item = [];
//
//   makeInstant() async {
//     prefers = await SharedPreferences.getInstance();
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//
//   setData() async {
//     prefers!setInt(Constant.counter, 10);
//     prefers!setDouble(Constant.decimal, 1.0);
//     prefers!setBool(Constant.repeat, true);
//     prefers!setString(Constant.action, "watch");
//     prefers!setString(Constant.item, <String>['Jigar','Harshil','jay']);
//     debugPrint("data is set --> ");
//   }
//
//   getData(){
//     counter = prefers!.getInt(Constant.counter)!;
//     decimal = prefers!.getBool(Constant.decimal)!;
//     repeat = prefers!.getBool(Constant.repeat)!;
//     action = prefers!.getString(Constant.action)!;
//     item = prefers!.getStringList(Constant.item)!;
//     setState((){});
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Local Data"),
//       ),
//       body: SafeArea(
//         child: Column(),
//       ),
//     );
//   }
// }
//
