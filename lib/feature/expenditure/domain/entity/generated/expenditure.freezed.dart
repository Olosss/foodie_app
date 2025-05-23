// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../expenditure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expenditure {
  String get payerUid => throw _privateConstructorUsedError;
  List<Cost> get cost => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpenditureCopyWith<Expenditure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenditureCopyWith<$Res> {
  factory $ExpenditureCopyWith(
          Expenditure value, $Res Function(Expenditure) then) =
      _$ExpenditureCopyWithImpl<$Res, Expenditure>;
  @useResult
  $Res call({String payerUid, List<Cost> cost, String name, DateTime time});
}

/// @nodoc
class _$ExpenditureCopyWithImpl<$Res, $Val extends Expenditure>
    implements $ExpenditureCopyWith<$Res> {
  _$ExpenditureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payerUid = null,
    Object? cost = null,
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      payerUid: null == payerUid
          ? _value.payerUid
          : payerUid // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<Cost>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenditureImplCopyWith<$Res>
    implements $ExpenditureCopyWith<$Res> {
  factory _$$ExpenditureImplCopyWith(
          _$ExpenditureImpl value, $Res Function(_$ExpenditureImpl) then) =
      __$$ExpenditureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payerUid, List<Cost> cost, String name, DateTime time});
}

/// @nodoc
class __$$ExpenditureImplCopyWithImpl<$Res>
    extends _$ExpenditureCopyWithImpl<$Res, _$ExpenditureImpl>
    implements _$$ExpenditureImplCopyWith<$Res> {
  __$$ExpenditureImplCopyWithImpl(
      _$ExpenditureImpl _value, $Res Function(_$ExpenditureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payerUid = null,
    Object? cost = null,
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_$ExpenditureImpl(
      payerUid: null == payerUid
          ? _value.payerUid
          : payerUid // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value._cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<Cost>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExpenditureImpl implements _Expenditure {
  const _$ExpenditureImpl(
      {required this.payerUid,
      required final List<Cost> cost,
      required this.name,
      required this.time})
      : _cost = cost;

  @override
  final String payerUid;
  final List<Cost> _cost;
  @override
  List<Cost> get cost {
    if (_cost is EqualUnmodifiableListView) return _cost;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cost);
  }

  @override
  final String name;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Expenditure(payerUid: $payerUid, cost: $cost, name: $name, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenditureImpl &&
            (identical(other.payerUid, payerUid) ||
                other.payerUid == payerUid) &&
            const DeepCollectionEquality().equals(other._cost, _cost) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payerUid,
      const DeepCollectionEquality().hash(_cost), name, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      __$$ExpenditureImplCopyWithImpl<_$ExpenditureImpl>(this, _$identity);
}

abstract class _Expenditure implements Expenditure {
  const factory _Expenditure(
      {required final String payerUid,
      required final List<Cost> cost,
      required final String name,
      required final DateTime time}) = _$ExpenditureImpl;

  @override
  String get payerUid;
  @override
  List<Cost> get cost;
  @override
  String get name;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
