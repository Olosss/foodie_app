import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/custom_transitions/slide_up_transition_page.dart';
import 'package:foodie_app/feature/auth/presentation/page/sign_in_page.dart';
import 'package:foodie_app/feature/auth/presentation/page/sign_up_page.dart';
import 'package:foodie_app/feature/expenditure/presentation/page/add_expenditure_page.dart';
import 'package:foodie_app/feature/launch/presentation/page/launch_page.dart';
import 'package:foodie_app/feature/room/presentation/page/room_entrance_page.dart';
import 'package:foodie_app/feature/room/presentation/page/room_page.dart';
import 'package:foodie_app/feature/room/presentation/page/room_settings_page.dart';
import 'package:foodie_app/feature/room/presentation/page/rooms_page.dart';
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

@TypedGoRoute<RoomEntranceRoute>(path: '/rooms-entrance')
class RoomEntranceRoute extends GoRouteData {
  const RoomEntranceRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RoomEntrancePage();
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

@TypedGoRoute<RoomSettingsRoute>(path: '/rooms/:id/settings')
class RoomSettingsRoute extends GoRouteData {
  const RoomSettingsRoute({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RoomSettingsPage(
      roomId: id,
    );
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
