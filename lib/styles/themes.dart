import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.primaryVariant,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.secondaryVariant,
      error: AppColors.surfaceGradientColor,
      onError: AppColors.surfaceGradientColor,
      surface: AppColors.surfaceGradientColor,
      onSurface: AppColors.surfaceGradientSecondColor,
    ),
    primaryColor: AppColors.primaryColor,
    dividerColor: AppColors.secondaryVariant,
    focusColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: "Montserrat",
    textTheme: TextTheme(
      headlineMedium: TextStyles.headlineMedium,
      headlineSmall: TextStyles.headlineSmall,
      titleSmall: TextStyles.titleSmall,
    ),
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: AppColors.primaryVariant,
      labelStyle: TextStyles.labelStyle,
      floatingLabelStyle: TextStyles.headlineMedium,
      fillColor: AppColors.secondaryColor,
      hintStyle: TextStyles.inputStyle,
    ),
  );
}
