import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/create_room_state.freezed.dart';

@freezed
class CreateRoomState with _$CreateRoomState {
  const factory CreateRoomState.init() = CreateRoomStateInit;
  const factory CreateRoomState.loading() = CreateRoomStateLoading;
  const factory CreateRoomState.error(Object error) = CreateRoomStateError;
  const factory CreateRoomState.done() = CreateRoomStateDone;
}
