import 'package:flutter/material.dart';
import 'package:starbucks/navbar.dart';

Color starbucksPrimanyColor = Color.fromARGB(255, 83, 184, 138);

Color starbucksAccentColor = Color.fromARGB(255, 199, 176, 121);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Starbucks(),
    );
  }
}
