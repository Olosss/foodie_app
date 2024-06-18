import 'package:flutter/material.dart';
import 'package:foodie_app/feature/auth/page/sign_in_page.dart';
import 'package:foodie_app/feature/auth/page/sign_up_page.dart';
import 'package:foodie_app/feature/home/page/home_page.dart';
import 'package:foodie_app/feature/room/page/rooms_page.dart';
import 'package:go_router/go_router.dart';

part 'generated/routes.g.dart';

@TypedGoRoute<HomePageRoute>(
    path: '/home_page',
)
@immutable
class HomePageRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<SignInRoute>(path: '/sign-in')
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

@TypedGoRoute<SignUpRoute>(path: '/sign-up')
class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignUpPage();
  }
}

@TypedGoRoute<RoomsRoute>(path: '/rooms')
class RoomsRoute extends GoRouteData {
  const RoomsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RoomsPage();
  }
}