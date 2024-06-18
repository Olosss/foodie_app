import 'package:firebase_auth/firebase_auth.dart';
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
    ///TODO Handle the google sign out
    // await googleSignIn.signOut();
    await firebaseAuth.signOut();
  }

  @override
  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) {
    return firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
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
  }) {
    return firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
