import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/close_room_state.freezed.dart';

@freezed
class CloseRoomState with _$CloseRoomState {
  const factory CloseRoomState.init() = CloseRoomStateInit;
  const factory CloseRoomState.loading() = CloseRoomStateLoading;
  const factory CloseRoomState.error(Object error) = CloseRoomStateError;
  const factory CloseRoomState.done() = CloseRoomStateDone;
}