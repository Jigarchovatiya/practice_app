import 'package:flutter/material.dart';

class DropDownMenuScreen extends StatefulWidget {
  const DropDownMenuScreen({Key? key}) : super(key: key);

  @override
  State<DropDownMenuScreen> createState() => _DropDownMenuScreenState();
}

class _DropDownMenuScreenState extends State<DropDownMenuScreen> {
  List listItems = [
    '20',
    '30',
    '40',
    '50',
    '60',
  ];
  String dropdownValue = '20';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: DropdownButton(
            onChanged: (String? newValue) {
              dropdownValue = newValue!;
              setState(() {});
            },
            value: dropdownValue,
            items: listItems.map<DropdownMenuItem<String>>(
              (value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
