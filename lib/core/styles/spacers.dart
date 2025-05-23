import 'package:flutter/material.dart';

class Spacers {
  static const double ultraSmall = 2.0;
  static const double extraSmall = 4.0;
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;
  static const double extraLarge = 32.0;
  static const double doubleExtraLarge = 64.0;
  static const double tripleExtraLarge = 96.0;
  static const double quadrupleExtraLarge = 128.0;

  static Widget vertical(double height) => SizedBox(height: height);
  static Widget horizontal(double width) => SizedBox(width: width);

  static Widget verticalUltraSmall() => vertical(ultraSmall);
  static Widget verticalExtraSmall() => vertical(extraSmall);
  static Widget verticalSmall() => vertical(small);
  static Widget verticalMedium() => vertical(medium);
  static Widget verticalLarge() => vertical(large);
  static Widget verticalExtraLarge() => vertical(extraLarge);
  static Widget verticalDoubleExtraLarge() => vertical(doubleExtraLarge);
  static Widget verticalTripleExtraLarge() => vertical(tripleExtraLarge);
  static Widget verticalQuadrupleExtraLarge() => vertical(quadrupleExtraLarge);

  static Widget horizontalExtraSmall() => horizontal(extraSmall);
  static Widget horizontalSmall() => horizontal(small);
  static Widget horizontalMedium() => horizontal(medium);
  static Widget horizontalLarge() => horizontal(large);
  static Widget horizontalExtraLarge() => horizontal(extraLarge);
  static Widget horizontalDoubleExtraLarge() => horizontal(doubleExtraLarge);
  static Widget horizontalTripleExtraLarge() => horizontal(tripleExtraLarge);
  static Widget horizontalQuadrupleExtraLarge() =>
      horizontal(quadrupleExtraLarge);
}
