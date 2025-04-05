import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/styles/styles.dart';

class JoinKeySection extends ConsumerWidget {
  const JoinKeySection({
    super.key,
    required this.roomId,
  });

  final String roomId;

  void _onCopyToClipboardTap({
    required BuildContext context,
    required String joinKey,
    required ThemeData theme,
  }) {
    Clipboard.setData(
      ClipboardData(
        text: joinKey,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: theme.colorScheme.secondaryContainer,
        content: Text(
          'Join key successfully copied.',
          style: theme.textTheme.headlineSmall,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    final String? joinKey = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> item) => item.asData?.value
            .firstWhereOrNull((Room element) => element.id == roomId)
            ?.joinKey,
      ),
    );

    return Column(
      children: <Widget>[
        Spacers.verticalSmall(),
        Text(
          'To invite new users to the room share this join key',
          style: theme.textTheme.headlineSmall,
        ),
        Spacers.verticalLarge(),
        Padding(
          padding: Paddings.paddingMedium(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  joinKey ?? '',
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Spacers.horizontalSmall(),
              GestureDetector(
                onTap: () => _onCopyToClipboardTap(
                  joinKey: joinKey ?? '',
                  context: context,
                  theme: theme,
                ),
                child: const Icon(
                  Icons.copy,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
