// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseAuthHash() => r'46c40b7c5cf8ab936c0daa96a6af106bd2ae5d51';

/// See also [firebaseAuth].
@ProviderFor(firebaseAuth)
final firebaseAuthProvider = Provider<FirebaseAuth>.internal(
  firebaseAuth,
  name: r'firebaseAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$firebaseAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseAuthRef = ProviderRef<FirebaseAuth>;
String _$googleSignInHash() => r'33e2d830c18590dbfdef7f4796eb1120b7e87104';

/// See also [googleSignIn].
@ProviderFor(googleSignIn)
final googleSignInProvider = Provider<GoogleSignIn>.internal(
  googleSignIn,
  name: r'googleSignInProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$googleSignInHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoogleSignInRef = ProviderRef<GoogleSignIn>;
String _$authRepositoryHash() => r'781257f1cbeff9f08958ab8c8d4d85d26078884a';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = Provider<AuthRepositoryInterface>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = ProviderRef<AuthRepositoryInterface>;
String _$getAuthStateStreamUseCaseHash() =>
    r'ce8a70a3deb69397f182c8c6be18122de5ba1efb';

/// See also [getAuthStateStreamUseCase].
@ProviderFor(getAuthStateStreamUseCase)
final getAuthStateStreamUseCaseProvider =
    Provider<GetAuthStateStreamUseCase>.internal(
  getAuthStateStreamUseCase,
  name: r'getAuthStateStreamUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAuthStateStreamUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetAuthStateStreamUseCaseRef = ProviderRef<GetAuthStateStreamUseCase>;
String _$signOutUseCaseHash() => r'4010267a9a8b1edcf5ed3877e7693f9c8e2cf05a';

/// See also [signOutUseCase].
@ProviderFor(signOutUseCase)
final signOutUseCaseProvider = Provider<SignOutUseCase>.internal(
  signOutUseCase,
  name: r'signOutUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signOutUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignOutUseCaseRef = ProviderRef<SignOutUseCase>;
String _$signInUseCaseHash() => r'7f757c6c38f2281925cafaea10d3521f995c86f2';

/// See also [signInUseCase].
@ProviderFor(signInUseCase)
final signInUseCaseProvider = AutoDisposeProvider<SignInUseCase>.internal(
  signInUseCase,
  name: r'signInUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signInUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignInUseCaseRef = AutoDisposeProviderRef<SignInUseCase>;
String _$signInGoogleUseCaseHash() =>
    r'72bb016e41250ec6ed177aa96059622b53acef87';

/// See also [signInGoogleUseCase].
@ProviderFor(signInGoogleUseCase)
final signInGoogleUseCaseProvider =
    AutoDisposeProvider<SignInGoogleUseCase>.internal(
  signInGoogleUseCase,
  name: r'signInGoogleUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signInGoogleUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignInGoogleUseCaseRef = AutoDisposeProviderRef<SignInGoogleUseCase>;
String _$signUpEmailUseCaseHash() =>
    r'a702843ae484aeeef507a9b40155fb440ec71b1e';

/// See also [signUpEmailUseCase].
@ProviderFor(signUpEmailUseCase)
final signUpEmailUseCaseProvider =
    AutoDisposeProvider<SignUpEmailUseCase>.internal(
  signUpEmailUseCase,
  name: r'signUpEmailUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$signUpEmailUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SignUpEmailUseCaseRef = AutoDisposeProviderRef<SignUpEmailUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
