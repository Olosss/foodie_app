import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/router.g.dart';

@riverpod
class Router extends _$Router {
  final routerKey = GlobalKey<NavigatorState>();
  ValueListenable? listenable;

  @override
  GoRouter build() {
    final userState = ref.watch(userNotifierProvider);
    listenable = ValueNotifier(userState);

    final router = GoRouter(
      navigatorKey: routerKey,
      refreshListenable: listenable,
      initialLocation: const LaunchRoute().location,
      debugLogDiagnostics: true,
      routes: $appRoutes,
      redirect: (context, state) {
        if (userState is UserNotLoggedIn) {
          if(allowedNotLoggedPages.contains(state.matchedLocation)){
            return null;
          }
          return const SignInRoute().location;
        }
        return null;
      },
    );
    ref.onDispose((router.dispose));

    return router;
  }

  List<String> get allowedNotLoggedPages => [
        const SignInRoute().location,
        const SignUpRoute().location,
        const LaunchRoute().location,
      ];
}
