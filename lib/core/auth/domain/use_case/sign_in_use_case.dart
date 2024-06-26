import 'package:foodie_app/core/auth/domain/repository/auth_repository_interface.dart';
import 'package:foodie_app/core/user/data/repository/user_repository_interface.dart';

class SignInUseCase {
  final AuthRepositoryInterface authRepository;
  final UserRepositoryInterface userRepositoryInterface;

  SignInUseCase({
    required this.authRepository,
    required this.userRepositoryInterface,
  });

  Future<void> call({
    required String email,
    required String password,
  }) async {
    final userCredential = await authRepository.signIn(
      email: email,
      password: password,
    );
    if(userCredential.additionalUserInfo?.isNewUser != true ||  userCredential.user == null){
      return;
    }
      return userRepositoryInterface.createUserDocument(
        email: email,
        uid: userCredential.user!.uid,
      );
  }
}
