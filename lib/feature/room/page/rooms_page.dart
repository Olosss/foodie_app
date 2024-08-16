import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/feature/common/widget/button/custom_button.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';

class RoomsPage extends ConsumerWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final roomsState = ref.watch(roomsNotifierProvider);
    return Scaffold(
        body: Padding(padding: const EdgeInsets.all(64.0),
          child: roomsState.map(data: (rooms) {
            return Column(
              children: [
                CustomButton(label: "Logout", onTap: () => {
                  ref.read(userNotifierProvider.notifier).signOut()
                }),
                Column(
                  children: rooms.value.map((room) => Text(room.name)).toList(),
                ),
              ],
            );
          }, error: (error) {
            return const CircularProgressIndicator();
          }, loading: (_) {
            return const CircularProgressIndicator();
          }),
        ));
  }
}
