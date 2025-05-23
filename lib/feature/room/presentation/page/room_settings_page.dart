import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/app_divider.dart';
import 'package:foodie_app/core/presentation/widget/page/base_page.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/presentation/widget/close_room_section.dart';
import 'package:foodie_app/feature/room/presentation/widget/join_key_section.dart';

class RoomSettingsPage extends ConsumerWidget {
  const RoomSettingsPage({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage(
      appBarText: 'Room Settings',
      child: Column(
        children: <Widget>[
          JoinKeySection(
            roomId: roomId,
          ),
          Spacers.verticalMedium(),
          const AppDivider(),
          CloseRoomSection(
            roomId: roomId,
          ),
        ],
      ),
    );
  }
}
