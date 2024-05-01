import 'package:foodie_app/core/auth/domain/repository/auth_repository_interface.dart';
import 'package:foodie_app/core/user/data/repository/user_repository_interface.dart';

class SignInGoogleUseCase {
  final AuthRepositoryInterface authRepository;
  final UserRepositoryInterface userRepositoryInterface;

  SignInGoogleUseCase({
    required this.authRepository,
    required this.userRepositoryInterface,
  });

  Future<void> call() async {
    final userCredential = await authRepository.signInWithGoogle();

    if(userCredential.additionalUserInfo?.isNewUser != true ||  userCredential.user?.email == null){
      return;
    }
    return userRepositoryInterface.createUserDocument(
      email: userCredential.user!.email!,
      uid: userCredential.user!.uid,
    );
  }
}