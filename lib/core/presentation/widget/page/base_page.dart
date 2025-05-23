import 'package:flutter/material.dart';
import 'package:foodie_app/core/presentation/widget/app_header.dart';
import 'package:foodie_app/core/styles/styles.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.child,
    required this.appBarText,
  });

  final Widget child;
  final String appBarText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: appBarText,
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: Paddings.paddingMedium(),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
