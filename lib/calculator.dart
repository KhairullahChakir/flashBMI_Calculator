import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({@required this.weight, @required this.height});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "'Overweight' You have a higher than normal body weight";
    } else if (_bmi > 18.5) {
      return "'Normal' You have a normal body weight. Good Job! ";
    } else {
      return 'Underweight'"You have a lower than normal body weight. You can eat a bit more";
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
