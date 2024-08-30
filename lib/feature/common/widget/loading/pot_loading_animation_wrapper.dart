import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/loading/pot_loading_animation.dart';

/// A widget that wraps a child and enforces a minimum loading effect
/// duration of at least [_minAnimationDelay] to improve user experience.
class PotLoadingAnimationWrapper extends StatelessWidget {
  const PotLoadingAnimationWrapper({
    super.key,
    required this.child,
  });
  final Duration _minAnimationDelay = const Duration(milliseconds: 1400);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: Future<void>.delayed(
        _minAnimationDelay,
      ),
      builder: (_, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return child;
        } else {
          return const PotLoadingAnimation();
        }
      },
    );
  }
}
