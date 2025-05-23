import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/feature/user/di/providers.dart';
import 'package:foodie_app/feature/auth/domain/repository/auth_repository_interface.dart';
import 'package:foodie_app/feature/auth/domain/use_case/get_auth_state_stream_use_case.dart';
import 'package:foodie_app/feature/auth/domain/use_case/sign_in_google_use_case.dart';
import 'package:foodie_app/feature/auth/domain/use_case/sign_in_use_case.dart';
import 'package:foodie_app/feature/auth/domain/use_case/sign_out_use_case.dart';
import 'package:foodie_app/feature/auth/domain/use_case/sign_up_email_use_case.dart';
import 'package:foodie_app/feature/auth/infrastructure/auth_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(
  FirebaseAuthRef ref,
) {
  return FirebaseAuth.instance;
}

@Riverpod(keepAlive: true)
GoogleSignIn googleSignIn(
  GoogleSignInRef ref,
) {
  return GoogleSignIn();
}

@Riverpod(keepAlive: true)
AuthRepositoryInterface authRepository(
  AuthRepositoryRef ref,
) {
  return AuthRepository(
    firebaseAuth: ref.watch(firebaseAuthProvider),
    googleSignIn: ref.watch(googleSignInProvider),
  );
}

@Riverpod(keepAlive: true)
GetAuthStateStreamUseCase getAuthStateStreamUseCase(
  GetAuthStateStreamUseCaseRef ref,
) {
  return GetAuthStateStreamUseCase(
    authRepository: ref.watch(authRepositoryProvider),
  );
}

@Riverpod(keepAlive: true)
SignOutUseCase signOutUseCase(
  SignOutUseCaseRef ref,
) {
  return SignOutUseCase(
    authRepository: ref.watch(authRepositoryProvider),
  );
}

@riverpod
SignInUseCase signInUseCase(
  SignInUseCaseRef ref,
) {
  return SignInUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    userRepositoryInterface: ref.watch(userRepositoryProvider),
  );
}

@riverpod
SignInGoogleUseCase signInGoogleUseCase(
  SignInGoogleUseCaseRef ref,
) {
  return SignInGoogleUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    userRepositoryInterface: ref.watch(userRepositoryProvider),
  );
}

@riverpod
SignUpEmailUseCase signUpEmailUseCase(
  SignUpEmailUseCaseRef ref,
) {
  return SignUpEmailUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    userRepositoryInterface: ref.watch(userRepositoryProvider),
  );
}
