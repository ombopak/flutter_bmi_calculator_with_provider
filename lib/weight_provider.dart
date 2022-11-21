import 'package:flutter/material.dart';

class WeightProvider with ChangeNotifier {
  double _weight = 70;

  double get weight => _weight;

  set weight(double value) {
    _weight = value.round().toDouble();
    notifyListeners();
  }
}
