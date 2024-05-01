import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/cost.freezed.dart';
part 'generated/cost.g.dart';

@Freezed(toJson: true)
class Cost with _$Cost {
  const factory Cost({
    required String userUid,
    required double value,
  }) = _Cost;
}