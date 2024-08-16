import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.primaryVariant,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.secondaryVariant,
      error: AppColors.errorColor,
      onError: AppColors.surfaceGradientColor,
      surface: AppColors.surfaceGradientColor,
      onSurface: AppColors.surfaceGradientSecondColor,
    ),
    primaryColor: AppColors.primaryColor,
    dividerColor: AppColors.secondaryVariant,
    focusColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: "Montserrat",
    textTheme: const TextTheme(
      headlineMedium: TextStyles.headlineMedium,
      headlineSmall: TextStyles.headlineSmall,
      titleSmall: TextStyles.titleSmall,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: AppColors.primaryVariant,
      labelStyle: TextStyles.labelStyle,
      floatingLabelStyle: TextStyles.headlineMedium,
      fillColor: AppColors.secondaryColor,
      hintStyle: TextStyles.inputStyle,
      errorStyle: TextStyles.errorStyle,
      helperStyle: TextStyles.helperStyle,
    ),
  );
}
