import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/rooms_state.freezed.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState.loading() = RoomsStateLoading;
  const factory RoomsState.error(Object error) = RoomsStateError;
  const factory RoomsState.done(List<Room> rooms) = RoomsStateDone;
}