import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CustomOneShotAnimation extends OneShotAnimation {
  CustomOneShotAnimation(
      super.animationName,
      VoidCallback? onStop,
      ) : super(
    onStop: onStop,
  );

  @override
  void onActiveChanged() {
    isActive
        ? onStart?.call()
        : WidgetsBinding.instance.addPostFrameCallback((_) => onStop?.call());
  }
}