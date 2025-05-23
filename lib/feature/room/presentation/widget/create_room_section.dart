import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/button/gradient_button.dart';
import 'package:foodie_app/core/presentation/widget/input/text_input.dart';
import 'package:foodie_app/core/presentation/widget/text_divider_row.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/presentation/notifier/create_room_notifier.dart';
import 'package:foodie_app/feature/room/presentation/notifier/state/create_room_state.dart';
import 'package:go_router/go_router.dart';

class CreateRoomSection extends ConsumerStatefulWidget {
  const CreateRoomSection({
    super.key,
  });

  @override
  ConsumerState<CreateRoomSection> createState() => _CreateRoomSectionState();
}

class _CreateRoomSectionState extends ConsumerState<CreateRoomSection> {
  final TextEditingController _roomNameController = TextEditingController();
  final TextEditingController _userRoomNameController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _roomNameController.dispose();
    super.dispose();
  }

  void _onCreateRoomTap(WidgetRef ref) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref.read(createRoomNotifierProvider.notifier).createRoom(
          roomName: _roomNameController.text,
          userRoomName: _userRoomNameController.text,
        );
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

    ref.listenManual(createRoomNotifierProvider, (_, CreateRoomState next) {
      if (next is CreateRoomStateDone) {
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final CreateRoomState notifier = ref.watch(createRoomNotifierProvider);

    return Column(
      children: <Widget>[
        TextDividerRow(
          text: 'Create Room',
          style: theme.inputDecorationTheme.labelStyle,
        ),
        Spacers.verticalMedium(),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextInput(
                controller: _roomNameController,
                label: 'Room name',
                hintText: 'Enter room name',
                validator: _validateName,
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
        Visibility(
          visible: notifier is CreateRoomStateError,
          child: Center(
            child: Text(
              'Failed to create the room',
              style: theme.inputDecorationTheme.errorStyle,
            ),
          ),
        ),
        Spacers.verticalMedium(),
        GradientButton(
          isLoading: notifier is CreateRoomStateLoading,
          label: 'Create',
          onTap: () => _onCreateRoomTap(
            ref,
          ),
        ),
      ],
    );
  }
}
