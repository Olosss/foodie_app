// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $signInRoute,
      $signUpRoute,
      $roomsRoute,
      $roomRoute,
      $launchRoute,
    ];

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/sign-in',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign-in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
      path: '/sign-up',
      factory: $SignUpRouteExtension._fromState,
    );

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/sign-up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $roomsRoute => GoRouteData.$route(
      path: '/rooms',
      factory: $RoomsRouteExtension._fromState,
    );

extension $RoomsRouteExtension on RoomsRoute {
  static RoomsRoute _fromState(GoRouterState state) => const RoomsRoute();

  String get location => GoRouteData.$location(
        '/rooms',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $roomRoute => GoRouteData.$route(
      path: '/rooms/:id',
      factory: $RoomRouteExtension._fromState,
    );

extension $RoomRouteExtension on RoomRoute {
  static RoomRoute _fromState(GoRouterState state) => RoomRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/rooms/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $launchRoute => GoRouteData.$route(
      path: '/launch',
      factory: $LaunchRouteExtension._fromState,
    );

extension $LaunchRouteExtension on LaunchRoute {
  static LaunchRoute _fromState(GoRouterState state) => const LaunchRoute();

  String get location => GoRouteData.$location(
        '/launch',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
