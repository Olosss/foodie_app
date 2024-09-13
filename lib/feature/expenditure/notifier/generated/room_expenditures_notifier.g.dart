// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../room_expenditures_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roomExpendituresNotifierHash() =>
    r'489964ba7afdbf48f3fba73f65a484a84942cd42';

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
    extends BuildlessAutoDisposeAsyncNotifier<List<Expenditure>> {
  late final String roomId;

  FutureOr<List<Expenditure>> build({
    required String roomId,
  });
}

/// See also [RoomExpendituresNotifier].
@ProviderFor(RoomExpendituresNotifier)
const roomExpendituresNotifierProvider = RoomExpendituresNotifierFamily();

/// See also [RoomExpendituresNotifier].
class RoomExpendituresNotifierFamily
    extends Family<AsyncValue<List<Expenditure>>> {
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
class RoomExpendituresNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RoomExpendituresNotifier,
        List<Expenditure>> {
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
  FutureOr<List<Expenditure>> runNotifierBuild(
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
  AutoDisposeAsyncNotifierProviderElement<RoomExpendituresNotifier,
      List<Expenditure>> createElement() {
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
    on AutoDisposeAsyncNotifierProviderRef<List<Expenditure>> {
  /// The parameter `roomId` of this provider.
  String get roomId;
}

class _RoomExpendituresNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RoomExpendituresNotifier,
        List<Expenditure>> with RoomExpendituresNotifierRef {
  _RoomExpendituresNotifierProviderElement(super.provider);

  @override
  String get roomId => (origin as RoomExpendituresNotifierProvider).roomId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
