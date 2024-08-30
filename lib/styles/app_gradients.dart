import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {

  AppGradients({
    this.primaryGradient,
    this.buttonGradient,
  });
  final LinearGradient? primaryGradient;
  final LinearGradient? buttonGradient;

  @override
  AppGradients copyWith({
    LinearGradient? primaryGradient,
    LinearGradient? buttonGradient,
  }) {
    return AppGradients(
      primaryGradient: primaryGradient ?? this.primaryGradient,
      buttonGradient: buttonGradient ?? this.buttonGradient,
    );
  }

  @override
  AppGradients lerp(ThemeExtension<AppGradients>? other, double t) {
    if (other is! AppGradients) return this;
    return AppGradients(
      primaryGradient:
          LinearGradient.lerp(primaryGradient, other.primaryGradient, t),
      buttonGradient:
          LinearGradient.lerp(buttonGradient, other.buttonGradient, t),
    );
  }
}
