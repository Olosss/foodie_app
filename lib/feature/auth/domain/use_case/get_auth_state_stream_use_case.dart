import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/feature/auth/domain/repository/auth_repository_interface.dart';

class GetAuthStateStreamUseCase {
  const GetAuthStateStreamUseCase({
    required this.authRepository,
  });

  final AuthRepositoryInterface authRepository;

  Stream<User?> call() {
    return authRepository.authStateChanges();
  }
}
