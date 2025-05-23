// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../expenditures_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpendituresState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpendituresStateLoading value) loading,
    required TResult Function(ExpendituresStateError value) error,
    required TResult Function(ExpendituresStateDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpendituresStateLoading value)? loading,
    TResult? Function(ExpendituresStateError value)? error,
    TResult? Function(ExpendituresStateDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpendituresStateLoading value)? loading,
    TResult Function(ExpendituresStateError value)? error,
    TResult Function(ExpendituresStateDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpendituresStateCopyWith<$Res> {
  factory $ExpendituresStateCopyWith(
          ExpendituresState value, $Res Function(ExpendituresState) then) =
      _$ExpendituresStateCopyWithImpl<$Res, ExpendituresState>;
}

/// @nodoc
class _$ExpendituresStateCopyWithImpl<$Res, $Val extends ExpendituresState>
    implements $ExpendituresStateCopyWith<$Res> {
  _$ExpendituresStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExpendituresStateLoadingImplCopyWith<$Res> {
  factory _$$ExpendituresStateLoadingImplCopyWith(
          _$ExpendituresStateLoadingImpl value,
          $Res Function(_$ExpendituresStateLoadingImpl) then) =
      __$$ExpendituresStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpendituresStateLoadingImplCopyWithImpl<$Res>
    extends _$ExpendituresStateCopyWithImpl<$Res,
        _$ExpendituresStateLoadingImpl>
    implements _$$ExpendituresStateLoadingImplCopyWith<$Res> {
  __$$ExpendituresStateLoadingImplCopyWithImpl(
      _$ExpendituresStateLoadingImpl _value,
      $Res Function(_$ExpendituresStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpendituresStateLoadingImpl implements ExpendituresStateLoading {
  const _$ExpendituresStateLoadingImpl();

  @override
  String toString() {
    return 'ExpendituresState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpendituresStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)
        done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
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
    required TResult Function(ExpendituresStateLoading value) loading,
    required TResult Function(ExpendituresStateError value) error,
    required TResult Function(ExpendituresStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpendituresStateLoading value)? loading,
    TResult? Function(ExpendituresStateError value)? error,
    TResult? Function(ExpendituresStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpendituresStateLoading value)? loading,
    TResult Function(ExpendituresStateError value)? error,
    TResult Function(ExpendituresStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExpendituresStateLoading implements ExpendituresState {
  const factory ExpendituresStateLoading() = _$ExpendituresStateLoadingImpl;
}

/// @nodoc
abstract class _$$ExpendituresStateErrorImplCopyWith<$Res> {
  factory _$$ExpendituresStateErrorImplCopyWith(
          _$ExpendituresStateErrorImpl value,
          $Res Function(_$ExpendituresStateErrorImpl) then) =
      __$$ExpendituresStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ExpendituresStateErrorImplCopyWithImpl<$Res>
    extends _$ExpendituresStateCopyWithImpl<$Res, _$ExpendituresStateErrorImpl>
    implements _$$ExpendituresStateErrorImplCopyWith<$Res> {
  __$$ExpendituresStateErrorImplCopyWithImpl(
      _$ExpendituresStateErrorImpl _value,
      $Res Function(_$ExpendituresStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ExpendituresStateErrorImpl(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ExpendituresStateErrorImpl implements ExpendituresStateError {
  const _$ExpendituresStateErrorImpl({required this.error});

  @override
  final Object error;

  @override
  String toString() {
    return 'ExpendituresState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpendituresStateErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpendituresStateErrorImplCopyWith<_$ExpendituresStateErrorImpl>
      get copyWith => __$$ExpendituresStateErrorImplCopyWithImpl<
          _$ExpendituresStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)
        done,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
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
    required TResult Function(ExpendituresStateLoading value) loading,
    required TResult Function(ExpendituresStateError value) error,
    required TResult Function(ExpendituresStateDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpendituresStateLoading value)? loading,
    TResult? Function(ExpendituresStateError value)? error,
    TResult? Function(ExpendituresStateDone value)? done,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpendituresStateLoading value)? loading,
    TResult Function(ExpendituresStateError value)? error,
    TResult Function(ExpendituresStateDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExpendituresStateError implements ExpendituresState {
  const factory ExpendituresStateError({required final Object error}) =
      _$ExpendituresStateErrorImpl;

  Object get error;
  @JsonKey(ignore: true)
  _$$ExpendituresStateErrorImplCopyWith<_$ExpendituresStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExpendituresStateDoneImplCopyWith<$Res> {
  factory _$$ExpendituresStateDoneImplCopyWith(
          _$ExpendituresStateDoneImpl value,
          $Res Function(_$ExpendituresStateDoneImpl) then) =
      __$$ExpendituresStateDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Expenditure> expenditures, Map<String, double> debtMap});
}

/// @nodoc
class __$$ExpendituresStateDoneImplCopyWithImpl<$Res>
    extends _$ExpendituresStateCopyWithImpl<$Res, _$ExpendituresStateDoneImpl>
    implements _$$ExpendituresStateDoneImplCopyWith<$Res> {
  __$$ExpendituresStateDoneImplCopyWithImpl(_$ExpendituresStateDoneImpl _value,
      $Res Function(_$ExpendituresStateDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenditures = null,
    Object? debtMap = null,
  }) {
    return _then(_$ExpendituresStateDoneImpl(
      expenditures: null == expenditures
          ? _value._expenditures
          : expenditures // ignore: cast_nullable_to_non_nullable
              as List<Expenditure>,
      debtMap: null == debtMap
          ? _value._debtMap
          : debtMap // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc

class _$ExpendituresStateDoneImpl implements ExpendituresStateDone {
  const _$ExpendituresStateDoneImpl(
      {required final List<Expenditure> expenditures,
      required final Map<String, double> debtMap})
      : _expenditures = expenditures,
        _debtMap = debtMap;

  final List<Expenditure> _expenditures;
  @override
  List<Expenditure> get expenditures {
    if (_expenditures is EqualUnmodifiableListView) return _expenditures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenditures);
  }

  final Map<String, double> _debtMap;
  @override
  Map<String, double> get debtMap {
    if (_debtMap is EqualUnmodifiableMapView) return _debtMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_debtMap);
  }

  @override
  String toString() {
    return 'ExpendituresState.done(expenditures: $expenditures, debtMap: $debtMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpendituresStateDoneImpl &&
            const DeepCollectionEquality()
                .equals(other._expenditures, _expenditures) &&
            const DeepCollectionEquality().equals(other._debtMap, _debtMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expenditures),
      const DeepCollectionEquality().hash(_debtMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpendituresStateDoneImplCopyWith<_$ExpendituresStateDoneImpl>
      get copyWith => __$$ExpendituresStateDoneImplCopyWithImpl<
          _$ExpendituresStateDoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Object error) error,
    required TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)
        done,
  }) {
    return done(expenditures, debtMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Object error)? error,
    TResult? Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
  }) {
    return done?.call(expenditures, debtMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Object error)? error,
    TResult Function(
            List<Expenditure> expenditures, Map<String, double> debtMap)?
        done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(expenditures, debtMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpendituresStateLoading value) loading,
    required TResult Function(ExpendituresStateError value) error,
    required TResult Function(ExpendituresStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExpendituresStateLoading value)? loading,
    TResult? Function(ExpendituresStateError value)? error,
    TResult? Function(ExpendituresStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpendituresStateLoading value)? loading,
    TResult Function(ExpendituresStateError value)? error,
    TResult Function(ExpendituresStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ExpendituresStateDone implements ExpendituresState {
  const factory ExpendituresStateDone(
          {required final List<Expenditure> expenditures,
          required final Map<String, double> debtMap}) =
      _$ExpendituresStateDoneImpl;

  List<Expenditure> get expenditures;
  Map<String, double> get debtMap;
  @JsonKey(ignore: true)
  _$$ExpendituresStateDoneImplCopyWith<_$ExpendituresStateDoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}
