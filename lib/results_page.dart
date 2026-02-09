import 'package:flutter/material.dart';
import 'constants.dart';
import 'components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text('Your Result', style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(resultText.toUpperCase(), style: const TextStyle(color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold)),
                  Text(bmiResult, style: const TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold)),
                  Text(interpretation, textAlign: TextAlign.center, style: const TextStyle(fontSize: 22.0)),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              color: kBottomContainerColour,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
              child: const Center(child: Text('RE-CALCULATE', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold))),
            ),
          ),
        ],
      ),
    );
  }
}