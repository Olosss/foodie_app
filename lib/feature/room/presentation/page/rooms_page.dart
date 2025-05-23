import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/presentation/widget/rooms_header.dart';
import 'package:foodie_app/feature/room/presentation/widget/rooms_list.dart';

class RoomsPage extends ConsumerWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const RoomsHeader(),
      body: Padding(
        padding: Paddings.paddingHorizontalMedium(),
        child: const RoomsList(),
      ),
    );
  }
}
