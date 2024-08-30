import 'package:foodie_app/core/auth/domain/use_case/sign_up_email_use_case.dart';
import 'package:foodie_app/core/auth/providers.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_up_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sign_up_notifier.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  late SignUpEmailUseCase _signUpEmailUseCase;

  @override
  SignUpState build() {
    _signUpEmailUseCase = ref.watch(signUpEmailUseCaseProvider);

    return const SignUpState.init();
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    state = const SignUpState.loading();
    try {
      await _signUpEmailUseCase(
        email: email,
        password: password,
      );
      state = const SignUpState.done();
    } on Exception catch (error) {
      state = SignUpState.error(error);
    }
  }
}
