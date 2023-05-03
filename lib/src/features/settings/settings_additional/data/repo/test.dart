import 'package:flutter/material.dart';

class Testt extends ChangeNotifier {
  double _textSize = 1;
  int _textSpacing = 1;
  int _lineHeight = 1;
  bool _textCenter = false;

  double get textSize => _textSize;

  set textSize(double value) {
    _textSize = value;
    notifyListeners();
  }

  int get textSpacing => _textSpacing;

  set textSpacing(int value) {
    _textSpacing = value;
    notifyListeners();
  }

  bool get textCenter => _textCenter;

  set textCenter(bool value) {
    _textCenter = value;
    notifyListeners();
  }

  int get lineHeight => _lineHeight;

  set lineHeight(int value) {
    _lineHeight = value;
    notifyListeners();
  }
}

