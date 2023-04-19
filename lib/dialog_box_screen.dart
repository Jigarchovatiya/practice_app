import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/second_screen.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text("title"),
                    // titlePadding: ,
                    // titleTextStyle: ,
                    content: const Text("You have complete the signup, Now you can login"),
                    // contentPadding: ,
                    // contentTextStyle: ,
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SecondScreen(),
                              ));
                        },
                        child: const Text("Ok"),
                      ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: Text("Cancel"),
                      // ),
                    ],
                    // actionsAlignment: ,
                    // actionsOverflowAlignment: ,
                    // actionsOverflowButtonSpacing: ,
                    // actionsOverflowDirection: ,
                    // actionsPadding: ,
                    // insetPadding: EdgeInsets.zero,
                    // buttonPadding: ,
                    // iconPadding: ,
                  ),
                );
              },
              child: const Text("Open Dialog"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                showSnackBar(context: context, message: "Hello");
              },
              child: const Text("Open Snack Bar"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                showSnackBar(context: context, message: "How");
              },
              child: const Text("Open Snack Bar"),
            ),
          ],
        ),
      ),
    );
  }
}

showSnackBar({BuildContext? context, String? message}) {
  return ScaffoldMessenger.of(context!).showSnackBar(
    SnackBar(
      content: Text(message!),
      // showCloseIcon: true,
      behavior: SnackBarBehavior.fixed,

      action: SnackBarAction(
        label: "Undo",
        onPressed: () {},
      ),
    ),
  );
}
