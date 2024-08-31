import 'package:flutter/material.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/widget/room_member_initials.dart';
import 'package:foodie_app/styles/app_border.dart';
import 'package:foodie_app/styles/app_border_radius.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomTile extends StatelessWidget {
  const RoomTile({
    super.key,
    required this.room,
    required this.onTap,
  });

  final Room room;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: AppBorders.borderAll(theme.secondaryHeaderColor),
          borderRadius: AppBorderRadius.borderRadiusSmall,
          gradient: theme.extension<AppGradients>()?.backgroundGradient,
        ),
        child: Padding(
          padding: Paddings.paddingVerticalMediumHorizontalSmall(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      room.name,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Spacers.verticalSmall(),
                    RoomMembersInitials(
                      roomMembers: room.users,
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: Spacers.medium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
