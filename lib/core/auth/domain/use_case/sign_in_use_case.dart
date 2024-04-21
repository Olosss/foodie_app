import 'package:foodie_app/core/auth/data/repository/auth_repository_interface.dart';

class SignInUseCase {
  final AuthRepositoryInterface authRepository;

  SignInUseCase({
    required this.authRepository,
  });

  Future<void> call({
    required String email,
    required String password,
  }) {
    return authRepository.signIn(
      email: email,
      password: password,
    );
  }
}
