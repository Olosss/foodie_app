import 'package:flutter/material.dart';
import 'package:foodie_app/feature/auth/page/sign_in_page.dart';
import 'package:foodie_app/feature/auth/page/sign_up_page.dart';
import 'package:foodie_app/feature/common/custom_transitions/slide_up_transition_page.dart';
import 'package:foodie_app/feature/expenditure/page/add_expenditure_page.dart';
import 'package:foodie_app/feature/launch/page/launch_page.dart';
import 'package:foodie_app/feature/room/page/room_page.dart';
import 'package:foodie_app/feature/room/page/rooms_page.dart';
import 'package:go_router/go_router.dart';

part 'generated/routes.g.dart';

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

@TypedGoRoute<RoomRoute>(path: '/rooms/:id')
class RoomRoute extends GoRouteData {
  const RoomRoute({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RoomPage(
      roomId: id,
    );
  }
}

@TypedGoRoute<LaunchRoute>(path: '/launch')
class LaunchRoute extends GoRouteData {
  const LaunchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LaunchPage();
  }
}

@TypedGoRoute<AddExpenditureRoute>(path: '/add-expenditure')
class AddExpenditureRoute extends GoRouteData {
  const AddExpenditureRoute({
    required this.id,
  });

  final String id;

  @override
  SlideUpTransitionPage buildPage(BuildContext context, GoRouterState state) {
    return SlideUpTransitionPage(
      child: AddExpenditurePage(
        roomId: id,
      ),
    );
  }
}
