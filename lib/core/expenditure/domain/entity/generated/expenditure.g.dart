// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../expenditure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'payerUid': instance.payerUid,
      'cost': instance.cost.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'time': instance.time.toIso8601String(),
    };
