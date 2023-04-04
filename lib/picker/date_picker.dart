import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var myFormat = DateFormat('dd-MM-yyyy');
  DateTime dateTime = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
        actions: [
          IconButton(
            onPressed: _showDatePicker,
            icon: const Icon(Icons.calendar_month, size: 30),
          ),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Text(myFormat.format(dateTime), style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
    ));
  }
}
