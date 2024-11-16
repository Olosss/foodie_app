import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/room/domain/entity/room.dart';
import 'package:foodie_app/feature/common/widget/error_content.dart';
import 'package:foodie_app/feature/common/widget/loading/pot_loading_animation.dart';
import 'package:foodie_app/feature/common/widget/loading/pot_loading_animation_wrapper.dart';
import 'package:foodie_app/feature/common/widget/text_divider_row.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/widget/rooms_empty_state.dart';
import 'package:foodie_app/feature/room/widget/rooms_list_content.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomsList extends ConsumerStatefulWidget {
  const RoomsList({super.key});

  @override
  ConsumerState<RoomsList> createState() => _RoomsListState();
}

class _RoomsListState extends ConsumerState<RoomsList> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AsyncValue<List<Room>> roomsState = ref.watch(roomsNotifierProvider);

    return PotLoadingAnimationWrapper(
      child: roomsState.when(
        data: (List<Room> rooms) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: Paddings.paddingVerticalLarge(),
                sliver: SliverToBoxAdapter(
                  child: TextDividerRow(
                    text: 'Your Rooms',
                    style: theme.inputDecorationTheme.labelStyle,
                  ),
                ),
              ),
              rooms.isEmpty
                  ? const RoomsEmptyState()
                  : RoomsListContent(
                      rooms: rooms,
                    ),
            ],
          );
        },
        error: (Object error, _) {
          return ErrorContent(
            error: error,
          );
        },
        loading: () {
          return const PotLoadingAnimation();
        },
      ),
    );
  }
}
