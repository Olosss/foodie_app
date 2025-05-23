import 'package:flutter/material.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:go_router/go_router.dart';

class SlideUpTransitionPage extends CustomTransitionPage<void> {
  SlideUpTransitionPage({
    required super.child,
  }) : super(
    opaque: false,
    transitionsBuilder: (
        _,
        Animation<double> animation,
        __,
        Widget child,
        ) {
      final CurvedAnimation curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      );

      return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Positioned.fill(
            child: AnimatedBuilder(
              animation: curvedAnimation,
              builder: (_, __) {
                return ColoredBox(
                  color: AppColors.secondaryColor.withOpacity(
                    curvedAnimation.value * 0.5,
                  ),
                );
              },
            ),
          ),
          AnimatedBuilder(
            animation: curvedAnimation,
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset: Offset(
                  0, (1 - curvedAnimation.value) * MediaQuery.of(context).size.height,
                ),
                child: child,
              );
            },
            child: child,
          ),
        ],
      );
    },
  );
}