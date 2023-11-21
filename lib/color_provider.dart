import 'package:flutter/material.dart';
import 'dart:math';

class ColorProvider extends ChangeNotifier {
  Color _containerColor = Colors.blue;
  Color _appBarTextColor = Colors.black;

  Color get containerColor => _containerColor;
  Color get appBarTextColor => _appBarTextColor;

  void updateColors() {
    _containerColor = _generateRandomColor();
    _appBarTextColor = _generateRandomColor();
    notifyListeners();
  }

  Color _generateRandomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }
}
