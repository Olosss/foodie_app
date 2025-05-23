import 'package:flutter/material.dart';
import 'package:foodie_app/core/router/routes.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/presentation/widget/room_member_initials.dart';
import 'package:go_router/go_router.dart';

class RoomTile extends StatelessWidget {
  const RoomTile({
    super.key,
    required this.room,
  });

  final Room room;

  void _onTileTap(
    BuildContext context,
  ) {
    context.push(RoomRoute(id: room.id).location);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: () => _onTileTap(context),
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
