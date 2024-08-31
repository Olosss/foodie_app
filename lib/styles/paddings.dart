import 'package:flutter/material.dart';

class Paddings {
  static const double extraSmall = 8.0;
  static const double small = 12.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extraLarge = 32.0;
  static const double doubleExtraLarge = 64.0;

  static EdgeInsets all(double value) => EdgeInsets.all(value);

  static EdgeInsets vertical(double value) =>
      EdgeInsets.symmetric(vertical: value);

  static EdgeInsets horizontal(double value) =>
      EdgeInsets.symmetric(horizontal: value);

  static EdgeInsets symmetric(double horizontal, double vertical) =>
      EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      );

  static EdgeInsets paddingExtraSmall() => all(extraSmall);

  static EdgeInsets paddingSmall() => all(small);

  static EdgeInsets paddingMedium() => all(medium);

  static EdgeInsets paddingLarge() => all(large);

  static EdgeInsets paddingExtraLarge() => all(extraLarge);

  static EdgeInsets paddingVerticalMedium() => vertical(medium);

  static EdgeInsets paddingVerticalLarge() => vertical(large);

  static EdgeInsets paddingHorizontalMedium() => horizontal(medium);

  static EdgeInsets paddingVerticalMediumHorizontalSmall() => symmetric(
        small,
        medium,
      );
}
