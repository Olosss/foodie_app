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
    required TResult Function(User user) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
    required TResult Function(UserLogged value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserLogged value)? logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserLogged value)? logged,
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
    required TResult Function(User user) logged,
  }) {
    return notLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? logged,
  }) {
    return notLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? logged,
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
    required TResult Function(UserLogged value) logged,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserLogged value)? logged,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserLogged value)? logged,
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
abstract class _$$UserLoggedImplCopyWith<$Res> {
  factory _$$UserLoggedImplCopyWith(
          _$UserLoggedImpl value, $Res Function(_$UserLoggedImpl) then) =
      __$$UserLoggedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UserLoggedImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoggedImpl>
    implements _$$UserLoggedImplCopyWith<$Res> {
  __$$UserLoggedImplCopyWithImpl(
      _$UserLoggedImpl _value, $Res Function(_$UserLoggedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserLoggedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UserLoggedImpl implements UserLogged {
  const _$UserLoggedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.logged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedImplCopyWith<_$UserLoggedImpl> get copyWith =>
      __$$UserLoggedImplCopyWithImpl<_$UserLoggedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoggedIn,
    required TResult Function(User user) logged,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLoggedIn,
    TResult? Function(User user)? logged,
  }) {
    return logged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoggedIn,
    TResult Function(User user)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotLoggedIn value) notLoggedIn,
    required TResult Function(UserLogged value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotLoggedIn value)? notLoggedIn,
    TResult? Function(UserLogged value)? logged,
  }) {
    return logged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotLoggedIn value)? notLoggedIn,
    TResult Function(UserLogged value)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class UserLogged implements UserState {
  const factory UserLogged(final User user) = _$UserLoggedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$UserLoggedImplCopyWith<_$UserLoggedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
