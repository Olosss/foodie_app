import 'dart:math';

extension DoubleRounding on double {
  double floorToTwoPlaces() {
    final num factor = pow(10, 2);
    return (this * factor).floor() / factor;
  }
}
