import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/common/widget/app_header.dart';

class RoomSettingsPage extends ConsumerWidget {
  const RoomSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
        body: Column(
      children: <Widget>[
        AppHeader(
          title: 'Join Room',
        ),
      ],
    ),);
  }
}
