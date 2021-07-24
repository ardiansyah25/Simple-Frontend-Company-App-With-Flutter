import 'package:flutter/material.dart';
import 'package:submission/portal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Portal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
