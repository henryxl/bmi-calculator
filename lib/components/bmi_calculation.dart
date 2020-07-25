import 'dart:math';
import 'package:flutter/foundation.dart';

class CalculatorBMI {
  final int height;
  final int weight;

  CalculatorBMI({
    @required this.height,
    @required this.weight,
  });

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getCategory() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. You can do with more exercise.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight. Good Job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
