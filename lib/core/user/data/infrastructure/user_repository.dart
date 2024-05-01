import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/core/user/data/repository/user_repository_interface.dart';

class UserRepository implements UserRepositoryInterface {
  final FirebaseFirestore firestore;

  UserRepository({required this.firestore});

  @override
  Future<void> createUserDocument({
    required String email,
    required String uid,
  }) async {
    CollectionReference users = firestore.collection('users');
    await users.add({
      'email': email,
      'uid': uid,
    });
  }
}
