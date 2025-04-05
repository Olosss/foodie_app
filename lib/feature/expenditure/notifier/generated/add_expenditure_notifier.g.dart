// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../add_expenditure_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addExpenditureNotifierHash() =>
    r'60c7ea9662a8c8cb87d14452379d9fa792a86a23';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AddExpenditureNotifier
    extends BuildlessAutoDisposeNotifier<AddExpenditureState> {
  late final String roomId;

  AddExpenditureState build({
    required String roomId,
  });
}

/// See also [AddExpenditureNotifier].
@ProviderFor(AddExpenditureNotifier)
const addExpenditureNotifierProvider = AddExpenditureNotifierFamily();

/// See also [AddExpenditureNotifier].
class AddExpenditureNotifierFamily extends Family<AddExpenditureState> {
  /// See also [AddExpenditureNotifier].
  const AddExpenditureNotifierFamily();

  /// See also [AddExpenditureNotifier].
  AddExpenditureNotifierProvider call({
    required String roomId,
  }) {
    return AddExpenditureNotifierProvider(
      roomId: roomId,
    );
  }

  @override
  AddExpenditureNotifierProvider getProviderOverride(
    covariant AddExpenditureNotifierProvider provider,
  ) {
    return call(
      roomId: provider.roomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addExpenditureNotifierProvider';
}

/// See also [AddExpenditureNotifier].
class AddExpenditureNotifierProvider extends AutoDisposeNotifierProviderImpl<
    AddExpenditureNotifier, AddExpenditureState> {
  /// See also [AddExpenditureNotifier].
  AddExpenditureNotifierProvider({
    required String roomId,
  }) : this._internal(
          () => AddExpenditureNotifier()..roomId = roomId,
          from: addExpenditureNotifierProvider,
          name: r'addExpenditureNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addExpenditureNotifierHash,
          dependencies: AddExpenditureNotifierFamily._dependencies,
          allTransitiveDependencies:
              AddExpenditureNotifierFamily._allTransitiveDependencies,
          roomId: roomId,
        );

  AddExpenditureNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.roomId,
  }) : super.internal();

  final String roomId;

  @override
  AddExpenditureState runNotifierBuild(
    covariant AddExpenditureNotifier notifier,
  ) {
    return notifier.build(
      roomId: roomId,
    );
  }

  @override
  Override overrideWith(AddExpenditureNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddExpenditureNotifierProvider._internal(
        () => create()..roomId = roomId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        roomId: roomId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<AddExpenditureNotifier,
      AddExpenditureState> createElement() {
    return _AddExpenditureNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddExpenditureNotifierProvider && other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddExpenditureNotifierRef
    on AutoDisposeNotifierProviderRef<AddExpenditureState> {
  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _AddExpenditureNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<AddExpenditureNotifier,
        AddExpenditureState> with AddExpenditureNotifierRef {
  _AddExpenditureNotifierProviderElement(super.provider);

  @override
  String get roomId => (origin as AddExpenditureNotifierProvider).roomId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
