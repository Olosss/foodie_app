import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepositoryInterface{
  Stream<User?> authStateChanges();

  Future<void> signOut();

  Future<UserCredential> signIn({
    required String email,
    required String password,
  });

  Future<UserCredential> signInWithGoogle();

  Future<UserCredential> signUp({
    required String email,
    required String password,
  });
}