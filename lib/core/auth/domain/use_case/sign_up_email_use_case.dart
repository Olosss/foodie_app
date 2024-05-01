import 'package:foodie_app/core/auth/domain/repository/auth_repository_interface.dart';
import 'package:foodie_app/core/user/data/repository/user_repository_interface.dart';

class SignUpEmailUseCase {
  final AuthRepositoryInterface authRepository;
  final UserRepositoryInterface userRepositoryInterface;

  SignUpEmailUseCase({
    required this.authRepository,
    required this.userRepositoryInterface,
  });

  Future<void> call({
    required String email,
    required String password,
  }) async {
    final userCredential = await authRepository.signUp(
      email: email,
      password: password,
    );
    return userRepositoryInterface.createUserDocument(
      email: email,
      uid: userCredential.user!.uid,
    );
  }
}
