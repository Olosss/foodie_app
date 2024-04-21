import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterface{
  Stream<User?> authStateChanges();

  Future<void> signOut();

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signInWithGoogle();
}