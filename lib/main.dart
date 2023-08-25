import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
          )
      ),
      home: Inputpage(),
    );

  }
}