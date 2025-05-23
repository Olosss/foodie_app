import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FloatingButtonAnimator extends FloatingActionButtonAnimator {
  @override
  Offset getOffset({
    required Offset begin,
    required Offset end,
    required double progress,
  }) {
    double factor = 1;
    if ((progress * 2) < 1) {
      factor = (progress * 2);
    }

    return end.copyWith(
      dx: end.dx,
      dy: begin.dy + (end.dy - begin.dy) * factor,
    );
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 0.0, end: 0).animate(parent);
  }

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 2.0).animate(parent);
  }
}