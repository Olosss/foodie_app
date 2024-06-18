// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../rooms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RoomsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(List<Room> rooms) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(List<Room> rooms)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(List<Room> rooms)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomsStateLoading value) loading,
    required TResult Function(RoomsStateError value) error,
    required TResult Function(RoomsStateDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomsStateLoading value)? loading,
    TResult? Function(RoomsStateError value)? error,
    TResult? Function(RoomsStateDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomsStateLoading value)? loading,
    TResult Function(RoomsStateError value)? error,
    TResult Function(RoomsStateDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsStateCopyWith<$Res> {
  factory $RoomsStateCopyWith(
          RoomsState value, $Res Function(RoomsState) then) =
      _$RoomsStateCopyWithImpl<$Res, RoomsState>;
}

/// @nodoc
class _$RoomsStateCopyWithImpl<$Res, $Val extends RoomsState>
    implements $RoomsStateCopyWith<$Res> {
  _$RoomsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomsStateLoadingImplCopyWith<$Res> {
  factory _$$RoomsStateLoadingImplCopyWith(_$RoomsStateLoadingImpl value,
          $Res Function(_$RoomsStateLoadingImpl) then) =
      __$$RoomsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomsStateLoadingImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$RoomsStateLoadingImpl>
    implements _$$RoomsStateLoadingImplCopyWith<$Res> {
  __$$RoomsStateLoadingImplCopyWithImpl(_$RoomsStateLoadingImpl _value,
      $Res Function(_$RoomsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomsStateLoadingImpl implements RoomsStateLoading {
  const _$RoomsStateLoadingImpl();

  @override
  String toString() {
    return 'RoomsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(List<Room> rooms) done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(List<Room> rooms)? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(List<Room> rooms)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomsStateLoading value) loading,
    required TResult Function(RoomsStateError value) error,
    required TResult Function(RoomsStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomsStateLoading value)? loading,
    TResult? Function(RoomsStateError value)? error,
    TResult? Function(RoomsStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomsStateLoading value)? loading,
    TResult Function(RoomsStateError value)? error,
    TResult Function(RoomsStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomsStateLoading implements RoomsState {
  const factory RoomsStateLoading() = _$RoomsStateLoadingImpl;
}

/// @nodoc
abstract class _$$RoomsStateErrorImplCopyWith<$Res> {
  factory _$$RoomsStateErrorImplCopyWith(_$RoomsStateErrorImpl value,
          $Res Function(_$RoomsStateErrorImpl) then) =
      __$$RoomsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$RoomsStateErrorImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$RoomsStateErrorImpl>
    implements _$$RoomsStateErrorImplCopyWith<$Res> {
  __$$RoomsStateErrorImplCopyWithImpl(
      _$RoomsStateErrorImpl _value, $Res Function(_$RoomsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RoomsStateErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$RoomsStateErrorImpl implements RoomsStateError {
  const _$RoomsStateErrorImpl(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'RoomsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsStateErrorImplCopyWith<_$RoomsStateErrorImpl> get copyWith =>
      __$$RoomsStateErrorImplCopyWithImpl<_$RoomsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(List<Room> rooms) done,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(List<Room> rooms)? done,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(List<Room> rooms)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomsStateLoading value) loading,
    required TResult Function(RoomsStateError value) error,
    required TResult Function(RoomsStateDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomsStateLoading value)? loading,
    TResult? Function(RoomsStateError value)? error,
    TResult? Function(RoomsStateDone value)? done,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomsStateLoading value)? loading,
    TResult Function(RoomsStateError value)? error,
    TResult Function(RoomsStateDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomsStateError implements RoomsState {
  const factory RoomsStateError(final Object error) = _$RoomsStateErrorImpl;

  Object get error;
  @JsonKey(ignore: true)
  _$$RoomsStateErrorImplCopyWith<_$RoomsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomsStateDoneImplCopyWith<$Res> {
  factory _$$RoomsStateDoneImplCopyWith(_$RoomsStateDoneImpl value,
          $Res Function(_$RoomsStateDoneImpl) then) =
      __$$RoomsStateDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> rooms});
}

/// @nodoc
class __$$RoomsStateDoneImplCopyWithImpl<$Res>
    extends _$RoomsStateCopyWithImpl<$Res, _$RoomsStateDoneImpl>
    implements _$$RoomsStateDoneImplCopyWith<$Res> {
  __$$RoomsStateDoneImplCopyWithImpl(
      _$RoomsStateDoneImpl _value, $Res Function(_$RoomsStateDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = null,
  }) {
    return _then(_$RoomsStateDoneImpl(
      null == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$RoomsStateDoneImpl implements RoomsStateDone {
  const _$RoomsStateDoneImpl(final List<Room> rooms) : _rooms = rooms;

  final List<Room> _rooms;
  @override
  List<Room> get rooms {
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rooms);
  }

  @override
  String toString() {
    return 'RoomsState.done(rooms: $rooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsStateDoneImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsStateDoneImplCopyWith<_$RoomsStateDoneImpl> get copyWith =>
      __$$RoomsStateDoneImplCopyWithImpl<_$RoomsStateDoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(List<Room> rooms) done,
  }) {
    return done(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(List<Room> rooms)? done,
  }) {
    return done?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(List<Room> rooms)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomsStateLoading value) loading,
    required TResult Function(RoomsStateError value) error,
    required TResult Function(RoomsStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomsStateLoading value)? loading,
    TResult? Function(RoomsStateError value)? error,
    TResult? Function(RoomsStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomsStateLoading value)? loading,
    TResult Function(RoomsStateError value)? error,
    TResult Function(RoomsStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class RoomsStateDone implements RoomsState {
  const factory RoomsStateDone(final List<Room> rooms) = _$RoomsStateDoneImpl;

  List<Room> get rooms;
  @JsonKey(ignore: true)
  _$$RoomsStateDoneImplCopyWith<_$RoomsStateDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
