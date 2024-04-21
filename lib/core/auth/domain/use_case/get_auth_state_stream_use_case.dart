import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/core/auth/data/repository/auth_repository_interface.dart';

class GetAuthStateStreamUseCase {
  final AuthRepositoryInterface authRepository;

  GetAuthStateStreamUseCase({
    required this.authRepository,
  });

  Stream<User?> call(){
    return authRepository.authStateChanges();
  }
}
