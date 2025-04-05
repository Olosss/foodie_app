import 'package:flutter/material.dart';

class BelowPageButtonLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    return Offset(
      0,
      scaffoldGeometry.scaffoldSize.height,
    );
  }
}
