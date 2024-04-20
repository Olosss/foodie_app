import 'package:flutter/material.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final routerKey = GlobalKey<NavigatorState>();
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());

  final router = GoRouter(
    navigatorKey: routerKey,
    refreshListenable: isAuth,
    initialLocation: const SignInRoute().location,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) => null,
  );
  ref.onDispose(router.dispose); // always clean up after yourselves (:

  return router;
}