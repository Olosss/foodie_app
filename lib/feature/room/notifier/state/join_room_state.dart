import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/join_room_state.freezed.dart';

@freezed
class JoinRoomState with _$JoinRoomState {
  const factory JoinRoomState.init() = JoinRoomStateInit;
  const factory JoinRoomState.loading() = JoinRoomStateLoading;
  const factory JoinRoomState.error(Object error) = JoinRoomStateError;
  const factory JoinRoomState.done() = JoinRoomStateDone;
}
