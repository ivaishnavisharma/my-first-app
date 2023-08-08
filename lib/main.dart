import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/data.dart';
import 'package:my_first_app/home.dart';
import 'package:my_first_app/list.dart';
import 'package:my_first_app/log.dart';
import 'package:my_first_app/months.dart';
import 'package:my_first_app/myprofile.dart';
import 'package:my_first_app/pract.dart';
import 'package:my_first_app/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Months(),
    );
  }
}


