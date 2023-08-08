import 'package:flutter/material.dart';

class DataShare extends StatelessWidget {
  TextEditingController textfieldcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textfieldcontroller,
              style: TextStyle(
                fontSize: 24,
                color: Colors.amber,
              ),
            ),
          ),
          ElevatedButton(
              child: Text('go to the second screen'), onPressed: () {
                print(textfieldcontroller.text);
          }
          ),
        ],
      ),
    );
  }
}
