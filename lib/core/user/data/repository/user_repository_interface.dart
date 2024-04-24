abstract class UserRepositoryInterface {
  Future<void> createUserDocument({
    required String email,
    required String uid,
  });
}
