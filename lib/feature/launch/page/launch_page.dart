import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
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
  late OneShotAnimation _controller;

  @override
  void initState(){
    super.initState();
    _controller = OneShotAnimation(Assets.launch, onStop: () {
      context.push(SignInRoute().location);
    });
    ref.listenManual(userNotifierProvider,(prev, next){
      ///TODO Autologin
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: RiveAnimation.asset(
            controllers: [_controller],
            useArtboardSize: true,
            Assets.launch,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Future<void> precacheImages() async {
    await precacheImage(AssetImage(Assets.logo), context);
  }
}