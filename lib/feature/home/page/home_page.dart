import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/user_notifier.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(children: <Widget>[
          ElevatedButton(
            onPressed: () => _onSignOutTap(ref),
            child: const Text('Sign out'),
          ),
          ElevatedButton(
            onPressed: () => _onCreateRoomTap(ref),
            child: const Text('Create room'),
          ),
        ],),);
  }

  void _onSignOutTap(WidgetRef ref) {
    GoogleSignIn().signOut();
    ref.read(userNotifierProvider.notifier).signOut();
  }

  Future<void> _onCreateRoomTap(WidgetRef ref) async {
    ///TODO
  }
}
