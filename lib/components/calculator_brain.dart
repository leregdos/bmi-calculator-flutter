import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
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

  String getInterpretation() {
    if (this.getResult() == 'Overweight') {
      return 'You are overweight. Try to exercise more.';
    } else if (this.getResult() == 'Normal') {
      return 'You are normal. Remember to stay healthy though.';
    } else {
      return 'You are underweight. Remember to eat more.';
    }
  }
}
