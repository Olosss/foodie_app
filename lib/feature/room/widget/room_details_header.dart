import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/feature/auth/notifier/state/user_state.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:foodie_app/feature/common/widget/animated_app_header.dart';
import 'package:foodie_app/feature/expenditure/widget/paid_by_me_star.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomDetailsHeader extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  const RoomDetailsHeader({
    super.key,
    required this.roomId,
  });

  final String roomId;

  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  ConsumerState<RoomDetailsHeader> createState() => _RoomDetailsHeaderState();
}

class _RoomDetailsHeaderState extends ConsumerState<RoomDetailsHeader> {
  void _onControllerPlay(AnimationController controller) {
    void controllerListener() async {
      if (controller.isCompleted) {
        await Future<void>.delayed(10.seconds);
        if(mounted){
          controller.forward(from: 0);
        }
      }
    }

    controller.addListener(controllerListener);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final String userUid = ref.watch(
      userNotifierProvider.select(
        (UserState item) => item is UserLogged ? (item).user.uid : '',
      ),
    );

    final String? userName = ref.watch(
      roomsNotifierProvider.select(
        (AsyncValue<List<Room>> data) =>
            data.asData?.value.findUserName(userUid, widget.roomId),
      ),
    );

    return AnimatedAppHeader(
      child: Row(
        children: <Widget>[
          userName != null
              ? Row(
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      ', ',
                      style: theme.textTheme.titleMedium,
                    ),
                    Text(
                      userName,
                      style: theme.textTheme.bodyLarge,
                    ),
                    Spacers.horizontalExtraSmall(),
                    PaidByMeStar(
                      userUid: userUid,
                      size: Spacers.large,
                    )
                        .animate(
                      delay: 100.ms,
                      onPlay: _onControllerPlay,
                    )
                        .shimmer(
                      duration: 1000.ms,
                      color: theme.colorScheme.secondaryFixedDim,
                      curve: Curves.easeOutSine,
                      colors: <Color>[
                        theme.colorScheme.scrim,
                        theme.colorScheme.surface,
                        theme.colorScheme.primary,
                        theme.colorScheme.onSurface,
                        theme.colorScheme.scrim,
                      ],
                    ).scale(
                      end: const Offset(0.8, 0.8),
                      curve: Curves.bounceIn,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
          const Spacer(),
          const Icon(
            Icons.room_preferences,
            size: 28,
          ),
        ],
      ),
    );
  }
}
