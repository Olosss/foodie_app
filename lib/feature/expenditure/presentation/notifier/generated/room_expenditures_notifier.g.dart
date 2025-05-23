// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../room_expenditures_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roomExpendituresNotifierHash() =>
    r'40ac0bb8fd4ad730a331cd5c18cd0fd0548bb88b';

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

abstract class _$RoomExpendituresNotifier
    extends BuildlessAutoDisposeNotifier<ExpendituresState> {
  late final String roomId;

  ExpendituresState build({
    required String roomId,
  });
}

/// See also [RoomExpendituresNotifier].
@ProviderFor(RoomExpendituresNotifier)
const roomExpendituresNotifierProvider = RoomExpendituresNotifierFamily();

/// See also [RoomExpendituresNotifier].
class RoomExpendituresNotifierFamily extends Family<ExpendituresState> {
  /// See also [RoomExpendituresNotifier].
  const RoomExpendituresNotifierFamily();

  /// See also [RoomExpendituresNotifier].
  RoomExpendituresNotifierProvider call({
    required String roomId,
  }) {
    return RoomExpendituresNotifierProvider(
      roomId: roomId,
    );
  }

  @override
  RoomExpendituresNotifierProvider getProviderOverride(
    covariant RoomExpendituresNotifierProvider provider,
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
  String? get name => r'roomExpendituresNotifierProvider';
}

/// See also [RoomExpendituresNotifier].
class RoomExpendituresNotifierProvider extends AutoDisposeNotifierProviderImpl<
    RoomExpendituresNotifier, ExpendituresState> {
  /// See also [RoomExpendituresNotifier].
  RoomExpendituresNotifierProvider({
    required String roomId,
  }) : this._internal(
          () => RoomExpendituresNotifier()..roomId = roomId,
          from: roomExpendituresNotifierProvider,
          name: r'roomExpendituresNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roomExpendituresNotifierHash,
          dependencies: RoomExpendituresNotifierFamily._dependencies,
          allTransitiveDependencies:
              RoomExpendituresNotifierFamily._allTransitiveDependencies,
          roomId: roomId,
        );

  RoomExpendituresNotifierProvider._internal(
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
  ExpendituresState runNotifierBuild(
    covariant RoomExpendituresNotifier notifier,
  ) {
    return notifier.build(
      roomId: roomId,
    );
  }

  @override
  Override overrideWith(RoomExpendituresNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RoomExpendituresNotifierProvider._internal(
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
  AutoDisposeNotifierProviderElement<RoomExpendituresNotifier,
      ExpendituresState> createElement() {
    return _RoomExpendituresNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoomExpendituresNotifierProvider && other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoomExpendituresNotifierRef
    on AutoDisposeNotifierProviderRef<ExpendituresState> {
  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _RoomExpendituresNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<RoomExpendituresNotifier,
        ExpendituresState> with RoomExpendituresNotifierRef {
  _RoomExpendituresNotifierProviderElement(super.provider);

  @override
  String get roomId => (origin as RoomExpendituresNotifierProvider).roomId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
