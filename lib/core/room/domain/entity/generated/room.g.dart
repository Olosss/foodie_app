// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      joinKey: json['joinKey'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => RoomMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinKey': instance.joinKey,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'userIds': instance.userIds,
    };
