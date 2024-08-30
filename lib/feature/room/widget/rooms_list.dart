import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/common/widget/pot_loading_animation.dart';
import 'package:foodie_app/feature/common/widget/pot_loading_animation_wrapper.dart';
import 'package:foodie_app/feature/room/notifier/rooms_notifier.dart';
import 'package:foodie_app/feature/room/widget/room_tile.dart';
import 'package:foodie_app/styles/styles.dart';

class RoomsList extends ConsumerStatefulWidget {
  const RoomsList({super.key});

  @override
  ConsumerState<RoomsList> createState() => _RoomsListState();
}

class _RoomsListState extends ConsumerState<RoomsList> {
  @override
  Widget build(BuildContext context) {
    final roomsState = ref.watch(roomsNotifierProvider);

    return PotLoadingAnimationWrapper(
      child: roomsState.map(data: (data) {
        return ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
              child: RoomTile(
                room: data.value[index],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Spacers.verticalExtraSmall();
          },
          itemCount: data.value.length,
        );
      }, error: (error) {
        //TODO Add error state
        return const SizedBox.shrink();
      }, loading: (loading) {
        return const PotLoadingAnimation();
      }),
    );
  }
}
