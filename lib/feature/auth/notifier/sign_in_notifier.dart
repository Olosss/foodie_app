import 'package:foodie_app/core/auth/domain/exception/sign_in_interrupted_exception.dart';
import 'package:foodie_app/core/auth/domain/use_case/sign_in_google_use_case.dart';
import 'package:foodie_app/core/auth/domain/use_case/sign_in_use_case.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_in_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:foodie_app/core/auth/providers.dart';

part 'generated/sign_in_notifier.g.dart';

@riverpod
class SignInNotifier extends _$SignInNotifier {
  late SignInUseCase _signInUseCase;
  late SignInGoogleUseCase _signInGoogleUseCase;

  @override
  SignInState build() {
    _signInUseCase = ref.watch(signInUseCaseProvider);
    _signInGoogleUseCase = ref.watch(signInGoogleUseCaseProvider);

    return const SignInState.init();
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const SignInState.loading();
    try {
      await _signInUseCase(
        email: email,
        password: password,
      );
      state = const SignInState.done();
    } catch (error) {
      state = SignInState.error(error);
    }
  }

  Future<void> signInWithGoogle() async {
    state = const SignInState.loadingGoogle();
    try {
      await _signInGoogleUseCase();
      state = const SignInState.done();
    } on SignInInterruptedException catch (_) {
      state = const SignInState.init();
    } catch (error) {
      state = SignInState.error(error);
    }
  }
}
