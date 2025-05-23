import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/feature/user/domain/repository/user_repository_interface.dart';

class UserRepository implements UserRepositoryInterface {
  UserRepository({required this.firestore});

  final FirebaseFirestore firestore;

  @override
  Future<void> createUserDocument({
    required String email,
    required String uid,
  }) async {
    final CollectionReference<Object?> users = firestore.collection('users');
    await users.add(<String, String>{
      'email': email,
      'uid': uid,
    });
  }
}
