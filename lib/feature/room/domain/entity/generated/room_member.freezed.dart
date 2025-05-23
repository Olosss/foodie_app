// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../room_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomMember _$RoomMemberFromJson(Map<String, dynamic> json) {
  return _RoomMember.fromJson(json);
}

/// @nodoc
mixin _$RoomMember {
  String get uid => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomMemberCopyWith<RoomMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomMemberCopyWith<$Res> {
  factory $RoomMemberCopyWith(
          RoomMember value, $Res Function(RoomMember) then) =
      _$RoomMemberCopyWithImpl<$Res, RoomMember>;
  @useResult
  $Res call({String uid, String userName, bool isCurrentUser});
}

/// @nodoc
class _$RoomMemberCopyWithImpl<$Res, $Val extends RoomMember>
    implements $RoomMemberCopyWith<$Res> {
  _$RoomMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userName = null,
    Object? isCurrentUser = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomMemberImplCopyWith<$Res>
    implements $RoomMemberCopyWith<$Res> {
  factory _$$RoomMemberImplCopyWith(
          _$RoomMemberImpl value, $Res Function(_$RoomMemberImpl) then) =
      __$$RoomMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String userName, bool isCurrentUser});
}

/// @nodoc
class __$$RoomMemberImplCopyWithImpl<$Res>
    extends _$RoomMemberCopyWithImpl<$Res, _$RoomMemberImpl>
    implements _$$RoomMemberImplCopyWith<$Res> {
  __$$RoomMemberImplCopyWithImpl(
      _$RoomMemberImpl _value, $Res Function(_$RoomMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? userName = null,
    Object? isCurrentUser = null,
  }) {
    return _then(_$RoomMemberImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomMemberImpl extends _RoomMember {
  const _$RoomMemberImpl(
      {required this.uid, required this.userName, this.isCurrentUser = false})
      : super._();

  factory _$RoomMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomMemberImplFromJson(json);

  @override
  final String uid;
  @override
  final String userName;
  @override
  @JsonKey()
  final bool isCurrentUser;

  @override
  String toString() {
    return 'RoomMember(uid: $uid, userName: $userName, isCurrentUser: $isCurrentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomMemberImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, userName, isCurrentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomMemberImplCopyWith<_$RoomMemberImpl> get copyWith =>
      __$$RoomMemberImplCopyWithImpl<_$RoomMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomMemberImplToJson(
      this,
    );
  }
}

abstract class _RoomMember extends RoomMember {
  const factory _RoomMember(
      {required final String uid,
      required final String userName,
      final bool isCurrentUser}) = _$RoomMemberImpl;
  const _RoomMember._() : super._();

  factory _RoomMember.fromJson(Map<String, dynamic> json) =
      _$RoomMemberImpl.fromJson;

  @override
  String get uid;
  @override
  String get userName;
  @override
  bool get isCurrentUser;
  @override
  @JsonKey(ignore: true)
  _$$RoomMemberImplCopyWith<_$RoomMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
