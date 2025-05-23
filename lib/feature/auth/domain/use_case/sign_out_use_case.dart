import 'package:foodie_app/feature/auth/domain/repository/auth_repository_interface.dart';

class SignOutUseCase {
  const SignOutUseCase({
    required this.authRepository,
  });

  final AuthRepositoryInterface authRepository;

  Future<void> call() {
    return authRepository.signOut();
  }
}
