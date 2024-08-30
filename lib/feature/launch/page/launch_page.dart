import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/feature/common/controller/custom_one_shot_animation.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:foodie_app/styles/styles.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class LaunchPage extends ConsumerStatefulWidget {
  const LaunchPage({super.key});

  @override
  ConsumerState<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends ConsumerState<LaunchPage> {
  late RiveAnimationController _controller;
  bool _animationFinished = false;
  bool _imagesPrecached = false;
  bool _userLoaded = false;
  bool _userSignedIn = false;

  @override
  void initState() {
    super.initState();

    _controller = CustomOneShotAnimation(
      'Timeline 1',
      onEndRiveAnimation,
    );

    ref.listenManual(userNotifierProvider, (prev, next) {
      _onUserLoaded(next);
    });

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => precacheImages(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: RiveAnimation.asset(
            Assets.launch,
            controllers: [_controller],
          ),
        ),
      ),
    );
  }

  Future<void> onEndRiveAnimation() async {
    _animationFinished = true;
    await Future.delayed(const Duration(seconds: 1));
    _tryToRedirectUser();
  }

  void _onUserLoaded(UserState state) {
    if (state is UserLogged) {
      _userSignedIn = true;
    } else if (state is UserNotLoggedIn) {
      _userLoaded = true;
    }
    _tryToRedirectUser();
  }

  void _tryToRedirectUser() {
    final shouldGoToRooms =
        _userSignedIn && _animationFinished && _imagesPrecached;
    final shouldGoToSignIn =
        _userLoaded && _animationFinished && _imagesPrecached;

    if (shouldGoToRooms) {
      context.go(const RoomsRoute().location);
    } else if (shouldGoToSignIn) {
      context.go(const SignInRoute().location);
    }
  }

  Future<void> precacheImages() async {
    await precacheImage(const AssetImage(Assets.logo), context);
    _imagesPrecached = true;
    _tryToRedirectUser();
  }
}
