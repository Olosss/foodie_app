// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../room_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomMemberImpl _$$RoomMemberImplFromJson(Map<String, dynamic> json) =>
    _$RoomMemberImpl(
      uid: json['uid'] as String,
      userName: json['userName'] as String,
      isCurrentUser: json['isCurrentUser'] as bool? ?? false,
    );

Map<String, dynamic> _$$RoomMemberImplToJson(_$RoomMemberImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userName': instance.userName,
      'isCurrentUser': instance.isCurrentUser,
    };
