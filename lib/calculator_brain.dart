import 'dart:math';

import 'main.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    // calculate BMI and return string
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Healthy";
    } else {
      return "Underweight";
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return "You are overweight :(";
    } else if (_bmi > 18.5) {
      return "You are healthy :)";
    } else {
      return "You are underweight :(";
    }
  }
}
