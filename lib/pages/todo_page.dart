import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController myController = TextEditingController();

  String greetingMessage = "";

  void greetUser() {
    String name = myController.text;
    setState(() {
      greetingMessage = "Hello, " + name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),
            TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type your name...")),
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            ),
          ],
        ),
      ),
    ));
  }
}
