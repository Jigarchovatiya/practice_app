import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool _lightIsOn = false;
  bool lightIsOn = false;
  bool person = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Button Screen"),
          centerTitle: true,
          leading: const BackButton(),
          actions: const [
            CloseButton(),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.blueGrey,
                size: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    _lightIsOn = !_lightIsOn;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  person = !person;
                });
              },
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  child: Icon(
                    person ? Icons.account_circle : Icons.account_circle_outlined,
                    size: 50,
                    color: person ? Colors.yellow.shade600 : Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Toggle light when tapped.
                    lightIsOn = !lightIsOn;
                  });
                },
                child: Container(
                  color: Colors.yellow.shade600,
                  padding: const EdgeInsets.all(8),
                  // Change button text when light changes state.
                  child: Text(lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FloatingActionButton --------------------->>> ");
          },
          tooltip: "add ",
          mini: false,
          splashColor: Colors.purple,
          hoverColor: Colors.yellow,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
