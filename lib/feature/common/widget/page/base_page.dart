import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/app_header.dart';
import 'package:foodie_app/styles/paddings.dart';

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
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppHeader(
                title: appBarText,
              ),
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
