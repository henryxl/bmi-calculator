import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import '../components/reusable_card.dart';

class CalculationPage extends StatelessWidget {
  final String bmi;
  final String category;
  final String description;

  CalculationPage({this.bmi, this.category, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLargePageTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    category.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kLargeResultTextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.0),
                    child: Text(
                      description,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ReusableBottomContainer(
            text: 'RE-CALCULATE',
            onTap: () => Navigator.of(context).pop(),
          )
        ],
      ),
    );
  }
}
