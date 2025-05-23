import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/controller/custom_one_shot_animation.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/user_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

class LaunchPage extends ConsumerStatefulWidget {
  const LaunchPage({super.key});

  @override
  ConsumerState<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends ConsumerState<LaunchPage> {
  late RiveAnimationController<dynamic> _controller;
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

    ref.listenManual(userNotifierProvider, (UserState? prev, UserState next) {
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

  Future<void> onEndRiveAnimation() async {
    _animationFinished = true;
    await Future<void>.delayed(const Duration(seconds: 1));
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
    final bool shouldGoToRooms =
        _userSignedIn && _animationFinished && _imagesPrecached;
    final bool shouldGoToSignIn =
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: RiveAnimation.asset(
            Assets.launch,
            controllers: <RiveAnimationController<dynamic>>[_controller],
          ),
        ),
      ),
    );
  }
}
