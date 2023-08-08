import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("next screen"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SecondScreen(text: "hello")));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String text;
  const SecondScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: Center(
        child: ElevatedButton(
          child: Text("go back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
