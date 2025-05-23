import 'package:flutter/material.dart';
import 'package:foodie_app/feature/common/widget/app_header.dart';

class AddExpenditureHeader extends StatelessWidget{
  const AddExpenditureHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppHeader(
      safeArea: false,
      title: 'Add New Expense',
    );
  }
}
