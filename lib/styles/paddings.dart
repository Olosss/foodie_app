import 'package:flutter/material.dart';

class Paddings {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extraLarge = 32.0;
  static const double doubleExtraLarge = 64.0;

  static EdgeInsets all(double value) => EdgeInsets.all(value);

  static EdgeInsets paddingSmall() => all(small);
  static EdgeInsets paddingMedium() => all(medium);
  static EdgeInsets paddingLarge() => all(large);
  static EdgeInsets paddingExtraLarge() => all(extraLarge);
}
