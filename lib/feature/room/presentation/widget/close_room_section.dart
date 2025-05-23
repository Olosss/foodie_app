import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/dialog/confirmation_dialog.dart';
import 'package:foodie_app/core/presentation/widget/button/outlined_custom_button.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/presentation/notifier/close_room_notifier.dart';
import 'package:foodie_app/feature/room/presentation/notifier/state/close_room_state.dart';
import 'package:go_router/go_router.dart';

class CloseRoomSection extends ConsumerWidget {
  const CloseRoomSection({
    super.key,
    required this.roomId,
  });

  final String roomId;

  Future<void> _onCloseRoomTap({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    final bool result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ConfirmationDialog(
          helperText:
              'Are you sure you want to close the room? This will delete all your expenses and remove the room.',
        );
      },
    );

    if (result == false) {
      return;
    }

    ref.read(closeRoomNotifierProvider.notifier).closeRoom(
          roomId: roomId,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    ref.listen(closeRoomNotifierProvider, (
      CloseRoomState? prev,
      CloseRoomState next,
    ) {
      if (prev is CloseRoomStateLoading && next is CloseRoomStateDone) {
        context.go(const RoomsRoute().location);
      }
    });

    final CloseRoomState closeRoomState = ref.watch(closeRoomNotifierProvider);

    return Column(
      children: <Widget>[
        Spacers.verticalMedium(),
        Visibility(
          visible: closeRoomState is CloseRoomStateError,
          child: Center(
            child: Text(
              'Failed to create the room',
              style: theme.inputDecorationTheme.errorStyle,
            ),
          ),
        ),
        Spacers.verticalMedium(),
        OutlinedCustomButton(
          label: 'Close Room',
          isLoading: closeRoomState is CloseRoomStateLoading,
          onTap: () => _onCloseRoomTap(
            context: context,
            ref: ref,
          ),
          image: const Icon(Icons.delete_forever),
        ),
      ],
    );
  }
}
