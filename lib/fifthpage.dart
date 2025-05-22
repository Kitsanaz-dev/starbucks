import 'package:flutter/material.dart';

class StarbucksFifthPage extends StatelessWidget {
  const StarbucksFifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Starbucks fifth page\nIn Maintenance",
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