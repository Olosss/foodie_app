import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/room/domain/exception/room_not_found_exception.dart';
import 'package:foodie_app/core/room/domain/exception/user_has_already_joined_the_room_exception.dart';
import 'package:foodie_app/core/room/domain/exception/users_in_room_count_limit_exceeded_exception.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/common/widget/input/text_input.dart';
import 'package:foodie_app/feature/common/widget/text_divider_row.dart';
import 'package:foodie_app/feature/room/notifier/join_room_notifier.dart';
import 'package:foodie_app/feature/room/notifier/state/join_room_state.dart';
import 'package:foodie_app/styles/spacers.dart';
import 'package:go_router/go_router.dart';

class JoinRoomSection extends ConsumerStatefulWidget {
  const JoinRoomSection({
    super.key,
  });

  @override
  ConsumerState<JoinRoomSection> createState() => _JoinRoomSectionState();
}

class _JoinRoomSectionState extends ConsumerState<JoinRoomSection> {
  final TextEditingController _joinKeyController = TextEditingController();
  final TextEditingController _userRoomNameController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _joinKeyController.dispose();
    super.dispose();
  }

  void _onJoinTap(WidgetRef ref) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref.read(joinRoomNotifierProvider.notifier).joinRoom(
          joinKey: _joinKeyController.text,
          userRoomName: _userRoomNameController.text,
        );
  }

  String? _validateJoinKey(String? joinKey) {
    if (joinKey == null || joinKey.isEmpty) {
      return 'The join key cannot be empty.';
    }
    return null;
  }

  String? _validateName(String? name) {
    if (name == null || name.isEmpty) {
      return 'The name cannot be empty.';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();

    ref.listenManual(joinRoomNotifierProvider, (_, JoinRoomState next) {
      if (next is JoinRoomStateDone) {
        context.pop();
      }
    });
  }

  String _getErrorMessage(Object error) {
    if (error is RoomNotFoundException) {
      return 'The room with this join key does not exist.';
    } else if (error is UserHasAlreadyJoinedTheRoomException) {
      return 'You have already joined this room.';
    } else if (error is UsersInRoomCountLimitExceededException) {
      return 'Sorry, the maximum number of users in the room has been reached.';
    }

    return 'Failed to join the room.';
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final JoinRoomState notifier = ref.watch(joinRoomNotifierProvider);

    return Column(
      children: <Widget>[
        TextDividerRow(
          text: 'Join Room',
          style: theme.inputDecorationTheme.labelStyle,
        ),
        Spacers.verticalMedium(),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextInput(
                controller: _joinKeyController,
                label: 'Join room key',
                hintText: 'Enter join room key',
                validator: _validateJoinKey,
              ),
              Spacers.verticalMedium(),
              TextInput(
                controller: _userRoomNameController,
                label: 'User room name',
                hintText: 'Enter user room name',
                validator: _validateName,
              ),
            ],
          ),
        ),
        Spacers.verticalMedium(),
        notifier is JoinRoomStateError
            ? Center(
                child: Text(
                  _getErrorMessage(notifier.error),
                  style: theme.inputDecorationTheme.errorStyle,
                  textAlign: TextAlign.center,
                ),
              )
            : const SizedBox.shrink(),
        Spacers.verticalMedium(),
        GradientButton(
          isLoading: notifier is JoinRoomStateLoading,
          label: 'Join',
          onTap: () => _onJoinTap(
            ref,
          ),
        ),
      ],
    );
  }
}
