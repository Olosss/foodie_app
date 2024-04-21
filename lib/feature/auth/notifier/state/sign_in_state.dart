import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.init() = SignInStateInit;
  const factory SignInState.loading() = SignInStateLoading;
  const factory SignInState.error(Object error) = SignInStateError;
  const factory SignInState.done() = SignInStateDone;
}