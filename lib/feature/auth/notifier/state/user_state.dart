import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.notLoggedIn() = UserNotLoggedIn;
  const factory UserState.logged() = UserNotLogged;
}