import 'package:flutter/material.dart';

class StarbucksFourthPage extends StatelessWidget {
  const StarbucksFourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Starbucks fourth page\nIn Maintenance",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}