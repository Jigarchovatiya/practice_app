import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({Key? key}) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Time Picker"),
          actions: [
            IconButton(
              onPressed: _showTimePicker,
              icon: const Icon(Icons.timer_outlined, size: 30),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                _timeOfDay.format(context).toString(),
                style: const TextStyle(fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
