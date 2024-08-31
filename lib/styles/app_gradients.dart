import 'package:flutter/material.dart';

class AppGradients extends ThemeExtension<AppGradients> {
  AppGradients({
    this.primaryGradient,
    this.buttonGradient,
    this.backgroundGradient,
  });

  final LinearGradient? primaryGradient;
  final LinearGradient? buttonGradient;
  final LinearGradient? backgroundGradient;

  @override
  AppGradients copyWith({
    LinearGradient? primaryGradient,
    LinearGradient? buttonGradient,
    LinearGradient? backgroundGradient,
  }) {
    return AppGradients(
      primaryGradient: primaryGradient ?? this.primaryGradient,
      buttonGradient: buttonGradient ?? this.buttonGradient,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
    );
  }

  @override
  AppGradients lerp(ThemeExtension<AppGradients>? other, double t) {
    if (other is! AppGradients) return this;
    return AppGradients(
      primaryGradient: LinearGradient.lerp(
        primaryGradient,
        other.primaryGradient,
        t,
      ),
      buttonGradient: LinearGradient.lerp(
        buttonGradient,
        other.buttonGradient,
        t,
      ),
      backgroundGradient: LinearGradient.lerp(
        backgroundGradient,
        other.backgroundGradient,
        t,
      ),
    );
  }
}
