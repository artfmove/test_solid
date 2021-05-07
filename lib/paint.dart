import 'package:flutter/material.dart';
import 'dart:math';

class Paint {
  static Color generateRandomRGBColor() {
    Random _random = Random();
    return Color.fromRGBO(_random.nextInt(256), _random.nextInt(256),
        _random.nextInt(256), _random.nextDouble());
  }
}
