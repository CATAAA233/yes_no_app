import 'package:flutter/material.dart';

const Color _customColor = Color(0XFF5C11D4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Color number must be greater/equal than 0 or minor of colorThemes '),
        assert(selectedColor <= _colorThemes.length,'Color number must be greater/equal than 0 or minor of colorThemes ');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
