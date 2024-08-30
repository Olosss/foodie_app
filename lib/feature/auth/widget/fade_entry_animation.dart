import 'package:flutter/material.dart';

class FadeEntryAnimation extends StatefulWidget {
  const FadeEntryAnimation({super.key});

  @override
  State<FadeEntryAnimation> createState() => _FadeEntryAnimationState();
}

class _FadeEntryAnimationState extends State<FadeEntryAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                theme.colorScheme.primary.withOpacity(
                  0.1 * _controller.value,
                ),
                theme.scaffoldBackgroundColor.withOpacity(
                  0.1 * _controller.value,
                ),
              ],
            ),
          ),
        );
      },
      animation: _controller,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.forward();
    });
  }

  @override
  dispose() {
    _controller.dispose(); // you need this
    super.dispose();
  }
}
