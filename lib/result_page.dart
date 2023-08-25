import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_Card.dart';

class ResultsPage extends StatelessWidget {

  const ResultsPage({super.key, required this.bmiResult, required this.interpretation, required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kInactiveCardColour,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child:Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Color(0xFF24D876),
                      ),
                    ),
                    Text(bmiResult,
                      style: const TextStyle(
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kBottomContainerColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: const Text(
                  'Re-Calculate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}