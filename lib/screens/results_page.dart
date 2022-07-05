import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.resultText, this.interpretation});

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(resultText!.toUpperCase(),
                            style: kResultTextStyle),
                        Text(
                          bmiResult!,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretation!,
                          textAlign: TextAlign.center,
                          style: kBMIMessageTextStyle,
                        ),
                      ],
                    ),
                  ),
                )),
            BottomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              textName: 'RE-CALCULATE',
            )
          ],
        ));
  }
}
