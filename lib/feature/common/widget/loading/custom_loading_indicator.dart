import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.square(
      dimension: Spacers.large,
      child: CircularProgressIndicator(),
    );
  }
}
