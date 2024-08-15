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

  @override
  void initState(){
    super.initState();

    ref.listenManual(userNotifierProvider,(prev, next){
      _tryToRedirectUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: RiveAnimation.asset(
            useArtboardSize: true,
            Assets.launch,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Future<void> _tryToRedirectUser() async {
    ///TODO Redirect on the end of Rive animation
    await Future.delayed(Duration(seconds: 2));
    await precacheImages();
    context.push(SignInRoute().location);
  }

  Future<void> precacheImages() async {
    await precacheImage(AssetImage(Assets.logo), context);
  }
}