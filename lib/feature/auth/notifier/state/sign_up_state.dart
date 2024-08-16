import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.init() = SignUpStateInit;
  const factory SignUpState.loading() = SignUpStateLoading;
  const factory SignUpState.error(Object error) = SignUpStateError;
  const factory SignUpState.done() = SignUpStateDone;
}