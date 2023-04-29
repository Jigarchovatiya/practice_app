import 'package:flutter/material.dart';

class PopUpMenuScreen extends StatefulWidget {
  const PopUpMenuScreen({Key? key}) : super(key: key);

  @override
  State<PopUpMenuScreen> createState() => _PopUpMenuScreenState();
}

class _PopUpMenuScreenState extends State<PopUpMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          centerTitle: true,
          title: const Text("Pop up menu"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(Icons.account_circle),
                      SizedBox(width: 10),
                      Text("Account"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: const [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 10),
                      Text("Starred"),
                    ],
                  ),
                ),
              ],
              elevation: 2,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }
}
