// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cost {
  String get userUid => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res, Cost>;
  @useResult
  $Res call({String userUid, double value});
}

/// @nodoc
class _$CostCopyWithImpl<$Res, $Val extends Cost>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CostImplCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$$CostImplCopyWith(
          _$CostImpl value, $Res Function(_$CostImpl) then) =
      __$$CostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userUid, double value});
}

/// @nodoc
class __$$CostImplCopyWithImpl<$Res>
    extends _$CostCopyWithImpl<$Res, _$CostImpl>
    implements _$$CostImplCopyWith<$Res> {
  __$$CostImplCopyWithImpl(_$CostImpl _value, $Res Function(_$CostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? value = null,
  }) {
    return _then(_$CostImpl(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$CostImpl implements _Cost {
  const _$CostImpl({required this.userUid, required this.value});

  @override
  final String userUid;
  @override
  final double value;

  @override
  String toString() {
    return 'Cost(userUid: $userUid, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostImpl &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userUid, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CostImplCopyWith<_$CostImpl> get copyWith =>
      __$$CostImplCopyWithImpl<_$CostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostImplToJson(
      this,
    );
  }
}

abstract class _Cost implements Cost {
  const factory _Cost(
      {required final String userUid,
      required final double value}) = _$CostImpl;

  @override
  String get userUid;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$CostImplCopyWith<_$CostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
