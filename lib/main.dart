import 'package:flutter/material.dart';

import 'Task1.dart';
import 'Task2.dart';
import 'Task3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Task3(),
    );
  }
}
