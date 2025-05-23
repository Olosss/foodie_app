// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../expenditure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenditureImpl _$$ExpenditureImplFromJson(Map<String, dynamic> json) =>
    _$ExpenditureImpl(
      payerUid: json['payerUid'] as String,
      cost: (json['cost'] as List<dynamic>)
          .map((e) => Cost.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$ExpenditureImplToJson(_$ExpenditureImpl instance) =>
    <String, dynamic>{
      'payerUid': instance.payerUid,
      'cost': instance.cost.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'time': instance.time.toIso8601String(),
    };
