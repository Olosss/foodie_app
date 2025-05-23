import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/common/widget/app_header.dart';
import 'package:foodie_app/feature/room/widget/create_room_section.dart';
import 'package:foodie_app/feature/room/widget/join_room_section.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomEntrancePage extends ConsumerWidget {
  const RoomEntrancePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppHeader(
        title: 'Room Access',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Spacers.verticalSmall(),
              Padding(
                padding: Paddings.paddingMedium(),
                child: Column(
                  children: <Widget>[
                    const JoinRoomSection(),
                    Spacers.verticalLarge(),
                    const CreateRoomSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
