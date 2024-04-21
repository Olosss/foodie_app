// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function()? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
    required TResult Function(UserNotLogged value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserNotLogged value)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserNotLogged value)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserNotLoggedInImplCopyWith<$Res> {
  factory _$$UserNotLoggedInImplCopyWith(_$UserNotLoggedInImpl value,
          $Res Function(_$UserNotLoggedInImpl) then) =
      __$$UserNotLoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotLoggedInImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserNotLoggedInImpl>
    implements _$$UserNotLoggedInImplCopyWith<$Res> {
  __$$UserNotLoggedInImplCopyWithImpl(
      _$UserNotLoggedInImpl _value, $Res Function(_$UserNotLoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotLoggedInImpl implements UserNotLoggedIn {
  const _$UserNotLoggedInImpl();

  @override
  String toString() {
    return 'UserState.notLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotLoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() logged,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function()? logged,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? logged,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
    required TResult Function(UserNotLogged value) logged,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserNotLogged value)? logged,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserNotLogged value)? logged,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserNotLoggedIn implements UserState {
  const factory UserNotLoggedIn() = _$UserNotLoggedInImpl;
}

/// @nodoc
abstract class _$$UserNotLoggedImplCopyWith<$Res> {
  factory _$$UserNotLoggedImplCopyWith(
          _$UserNotLoggedImpl value, $Res Function(_$UserNotLoggedImpl) then) =
      __$$UserNotLoggedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotLoggedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserNotLoggedImpl>
    implements _$$UserNotLoggedImplCopyWith<$Res> {
  __$$UserNotLoggedImplCopyWithImpl(
      _$UserNotLoggedImpl _value, $Res Function(_$UserNotLoggedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotLoggedImpl implements UserNotLogged {
  const _$UserNotLoggedImpl();

  @override
  String toString() {
    return 'UserState.logged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotLoggedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function() logged,
  }) {
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function()? logged,
  }) {
    return logged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function()? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
    required TResult Function(UserNotLogged value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserNotLogged value)? logged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserNotLogged value)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class UserNotLogged implements UserState {
  const factory UserNotLogged() = _$UserNotLoggedImpl;
}
