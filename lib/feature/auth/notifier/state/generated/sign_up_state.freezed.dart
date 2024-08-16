// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateError value) error,
    required TResult Function(SignUpStateDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateError value)? error,
    TResult? Function(SignUpStateDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateError value)? error,
    TResult Function(SignUpStateDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateInitImplCopyWith<$Res> {
  factory _$$SignUpStateInitImplCopyWith(_$SignUpStateInitImpl value,
          $Res Function(_$SignUpStateInitImpl) then) =
      __$$SignUpStateInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateInitImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInitImpl>
    implements _$$SignUpStateInitImplCopyWith<$Res> {
  __$$SignUpStateInitImplCopyWithImpl(
      _$SignUpStateInitImpl _value, $Res Function(_$SignUpStateInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateInitImpl implements SignUpStateInit {
  const _$SignUpStateInitImpl();

  @override
  String toString() {
    return 'SignUpState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function() done,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function()? done,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateError value) error,
    required TResult Function(SignUpStateDone value) done,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateError value)? error,
    TResult? Function(SignUpStateDone value)? done,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateError value)? error,
    TResult Function(SignUpStateDone value)? done,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInit implements SignUpState {
  const factory SignUpStateInit() = _$SignUpStateInitImpl;
}

/// @nodoc
abstract class _$$SignUpStateLoadingImplCopyWith<$Res> {
  factory _$$SignUpStateLoadingImplCopyWith(_$SignUpStateLoadingImpl value,
          $Res Function(_$SignUpStateLoadingImpl) then) =
      __$$SignUpStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateLoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLoadingImpl>
    implements _$$SignUpStateLoadingImplCopyWith<$Res> {
  __$$SignUpStateLoadingImplCopyWithImpl(_$SignUpStateLoadingImpl _value,
      $Res Function(_$SignUpStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateLoadingImpl implements SignUpStateLoading {
  const _$SignUpStateLoadingImpl();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function()? done,
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
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateError value) error,
    required TResult Function(SignUpStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateError value)? error,
    TResult? Function(SignUpStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateError value)? error,
    TResult Function(SignUpStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignUpState {
  const factory SignUpStateLoading() = _$SignUpStateLoadingImpl;
}

/// @nodoc
abstract class _$$SignUpStateErrorImplCopyWith<$Res> {
  factory _$$SignUpStateErrorImplCopyWith(_$SignUpStateErrorImpl value,
          $Res Function(_$SignUpStateErrorImpl) then) =
      __$$SignUpStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$SignUpStateErrorImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateErrorImpl>
    implements _$$SignUpStateErrorImplCopyWith<$Res> {
  __$$SignUpStateErrorImplCopyWithImpl(_$SignUpStateErrorImpl _value,
      $Res Function(_$SignUpStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignUpStateErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$SignUpStateErrorImpl implements SignUpStateError {
  const _$SignUpStateErrorImpl(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateErrorImplCopyWith<_$SignUpStateErrorImpl> get copyWith =>
      __$$SignUpStateErrorImplCopyWithImpl<_$SignUpStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function() done,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function()? done,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function()? done,
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
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateError value) error,
    required TResult Function(SignUpStateDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateError value)? error,
    TResult? Function(SignUpStateDone value)? done,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateError value)? error,
    TResult Function(SignUpStateDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpStateError implements SignUpState {
  const factory SignUpStateError(final Object error) = _$SignUpStateErrorImpl;

  Object get error;
  @JsonKey(ignore: true)
  _$$SignUpStateErrorImplCopyWith<_$SignUpStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateDoneImplCopyWith<$Res> {
  factory _$$SignUpStateDoneImplCopyWith(_$SignUpStateDoneImpl value,
          $Res Function(_$SignUpStateDoneImpl) then) =
      __$$SignUpStateDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateDoneImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateDoneImpl>
    implements _$$SignUpStateDoneImplCopyWith<$Res> {
  __$$SignUpStateDoneImplCopyWithImpl(
      _$SignUpStateDoneImpl _value, $Res Function(_$SignUpStateDoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateDoneImpl implements SignUpStateDone {
  const _$SignUpStateDoneImpl();

  @override
  String toString() {
    return 'SignUpState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInit value) init,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateError value) error,
    required TResult Function(SignUpStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInit value)? init,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateError value)? error,
    TResult? Function(SignUpStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInit value)? init,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateError value)? error,
    TResult Function(SignUpStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class SignUpStateDone implements SignUpState {
  const factory SignUpStateDone() = _$SignUpStateDoneImpl;
}
