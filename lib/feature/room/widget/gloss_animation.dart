import 'package:flutter/material.dart';
import 'package:foodie_app/styles/app_gradients.dart';

class GlossAnimation extends StatefulWidget {
  const GlossAnimation({
    super.key,
    this.animate = true,
  });

  final bool animate;

  @override
  State<GlossAnimation> createState() => _GlossAnimationState();
}

class _GlossAnimationState extends State<GlossAnimation>
    with SingleTickerProviderStateMixin {
  late bool _animationStarted = !widget.animate;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final Future<void> delay =
          Future<void>.delayed(const Duration(milliseconds: 400));

      delay.then((_) {
        if (mounted) {
          setState(() {
            _animationStarted = true;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          left: 0,
          bottom: -1,
          right: _animationStarted ? 0 : screenWidth,
          duration: const Duration(milliseconds: 1600),
          curve: Curves.fastOutSlowIn,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: theme.extension<AppGradients>()?.buttonGradient,
            ),
            child: const SizedBox(
              height: 3,
              width: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
