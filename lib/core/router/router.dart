import 'package:flutter/material.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/presentation/notifier/user_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/router.g.dart';

@riverpod
class Router extends _$Router {
  final GlobalKey<NavigatorState> routerKey = GlobalKey<NavigatorState>();
  _UserDataNotifier? _userDataListenable;

  @override
  GoRouter build() {
    _userDataListenable = _UserDataNotifier(null);
    ref.listen(userNotifierProvider, (_, UserState next) {
      _userDataListenable?.updateDataList(next);
    });

    final GoRouter router = GoRouter(
      navigatorKey: routerKey,
      refreshListenable: _userDataListenable,
      initialLocation: const LaunchRoute().location,
      debugLogDiagnostics: true,
      routes: $appRoutes,
      redirect: (BuildContext context, GoRouterState state) {
        if (_userDataListenable?.data is UserNotLoggedIn &&
            authenticatedRoutes.contains(state.matchedLocation)) {
          return const SignInRoute().location;
        }
        return null;
      },
    );
    ref.onDispose((router.dispose));

    return router;
  }

  List<String> get authenticatedRoutes => <String>[
        const RoomsRoute().location,
      ];
}

class _UserDataNotifier extends ChangeNotifier {
  _UserDataNotifier(this.user);

  UserState? user;

  UserState? get data => user;

  void updateDataList(UserState newUserState) {
    user = newUserState;
    notifyListeners();
  }
}
