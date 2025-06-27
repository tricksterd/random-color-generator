import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorNotifier extends Notifier<Color> {
  @override
  Color build() => Colors.white;

  void generateRandomColor() {
    final red = _generateRandomRGBValue();
    final green = _generateRandomRGBValue();
    final blue = _generateRandomRGBValue();

    state = Color.fromRGBO(red, green, blue, 1.0);
  }

  int _generateRandomRGBValue() {
    const maxRgbValue = 256;

    return Random().nextInt(maxRgbValue);
  }
}
