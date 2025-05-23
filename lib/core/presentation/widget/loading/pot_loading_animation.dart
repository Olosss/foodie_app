import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:rive/rive.dart';

class PotLoadingAnimation extends StatelessWidget {
  const PotLoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return const RiveAnimation.asset(Assets.pot);
  }
}
