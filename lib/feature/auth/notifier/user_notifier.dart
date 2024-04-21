import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/core/auth/domain/use_case/get_auth_state_stream_use_case.dart';
import 'package:foodie_app/core/auth/domain/use_case/sign_out_use_case.dart';
import 'package:foodie_app/core/auth/providers.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/user_notifier.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier{
  late GetAuthStateStreamUseCase _getAuthStateStreamUseCase;
  late SignOutUseCase _signOutUseCase;
  StreamSubscription? userStream;

  @override
  UserState build(){
    _getAuthStateStreamUseCase = ref.watch(getAuthStateStreamUseCaseProvider);
    _signOutUseCase = ref.watch(signOutUseCaseProvider);

    userStream = _getAuthStateStreamUseCase().listen((User? event) {
      if(event == null){
        state = const UserState.notLoggedIn();
        return;
      }

      ref.onDispose(() {
        userStream?.cancel();
      });

      state = const UserState.logged();
    });

    return const UserState.notLoggedIn();
  }

  Future<void> signOut(){
    return _signOutUseCase();
  }
}