import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/presentation/widget/error_content.dart';
import 'package:foodie_app/core/presentation/widget/loading/pot_loading_animation.dart';
import 'package:foodie_app/core/presentation/widget/loading/pot_loading_animation_wrapper.dart';
import 'package:foodie_app/core/presentation/widget/text_divider_row.dart';
import 'package:foodie_app/core/styles/styles.dart';
import 'package:foodie_app/feature/room/domain/entity/room.dart';
import 'package:foodie_app/feature/room/presentation/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/presentation/widget/rooms_empty_state.dart';
import 'package:foodie_app/feature/room/presentation/widget/rooms_list_content.dart';

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
