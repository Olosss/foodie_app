import 'package:foodie_app/core/auth/data/repository/auth_repository_interface.dart';

class SignInGoogleUseCase {
  final AuthRepositoryInterface authRepository;

  SignInGoogleUseCase({
    required this.authRepository,
  });

  Future<void> call() {
    return authRepository.signInWithGoogle();
  }
}