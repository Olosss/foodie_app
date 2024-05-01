import 'package:foodie_app/core/auth/domain/repository/auth_repository_interface.dart';

class SignOutUseCase {
  final AuthRepositoryInterface authRepository;

  SignOutUseCase({
    required this.authRepository,
  });

  Future<void> call(){
    return authRepository.signOut();
  }
}