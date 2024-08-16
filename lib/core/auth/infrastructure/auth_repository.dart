import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie_app/core/auth/domain/exception/email_already_in_use_exception.dart';
import 'package:foodie_app/core/auth/domain/exception/invalid_creadential_exception.dart';
import 'package:foodie_app/core/auth/domain/exception/login_attempt_limit_exceeded.dart';
import 'package:foodie_app/core/auth/domain/repository/auth_repository_interface.dart';
import 'package:foodie_app/core/auth/domain/exception/sign_in_interrupted_exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRepository implements AuthRepositoryInterface {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;

  AuthRepository({
    required this.firebaseAuth,
    required this.googleSignIn,
  });

  @override
  Stream<User?> authStateChanges() {
    return firebaseAuth.authStateChanges();
  }

  @override
  Future<void> signOut() async {
    await googleSignIn.signOut();
    await firebaseAuth.signOut();
  }

  @override
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (error) {
      if(error.code == "invalid-credential"){
        throw InvalidCredentialException();
      } else if(error.code == "too-many-requests"){
        throw LoginAttemptLimitExceeded();
      }
      rethrow;
    }
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser =  await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    if(googleAuth?.accessToken == null || googleAuth?.idToken == null){
      throw SignInInterruptedException();
    }

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<UserCredential> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (error) {
      if(error.code == "email-already-in-use"){
        throw EmailAlreadyInUseException();
      }
      rethrow;
    }
  }
}
