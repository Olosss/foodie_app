// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CostImpl _$$CostImplFromJson(Map<String, dynamic> json) => _$CostImpl(
      userUid: json['userUid'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$CostImplToJson(_$CostImpl instance) =>
    <String, dynamic>{
      'userUid': instance.userUid,
      'value': instance.value,
    };
