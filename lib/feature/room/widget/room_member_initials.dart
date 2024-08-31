import 'package:flutter/material.dart';
import 'package:foodie_app/core/room/domain/entity/room_member.dart';
import 'package:foodie_app/feature/room/widget/user_circle_initial.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomMembersInitials extends StatelessWidget {
  const RoomMembersInitials({
    super.key,
    required this.roomMembers,
  });

  final List<RoomMember> roomMembers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Spacers.extraLarge,
      child: Stack(
        children:
            roomMembers.asMap().entries.map((MapEntry<int, RoomMember> entry) {
          int index = entry.key;
          double leftPosition = index * Spacers.large;

          return Positioned(
            left: leftPosition,
            bottom: 0,
            child: UserCircleInitials(
              userName: entry.value.userName,
            ),
          );
        }).toList(),
      ),
    );
  }
}
