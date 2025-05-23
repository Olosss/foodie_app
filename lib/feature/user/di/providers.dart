import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodie_app/feature/user/domain/repository/user_repository_interface.dart';
import 'package:foodie_app/feature/user/infrastructure/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseFirestore firebaseFirestore(
  FirebaseFirestoreRef ref,
) {
  return FirebaseFirestore.instance;
}

@Riverpod(keepAlive: true)
UserRepositoryInterface userRepository(
  UserRepositoryRef ref,
) {
  return UserRepository(
    firestore: ref.watch(
      firebaseFirestoreProvider,
    ),
  );
}
