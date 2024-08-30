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
      onError: AppColors.errorColor,
      surface: AppColors.surfaceGradientColor,
      onSurface: AppColors.surfaceGradientSecondColor,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    dividerColor: AppColors.secondaryVariant,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      headlineLarge: TextStyles.headlineLarge,
      headlineMedium: TextStyles.headlineMedium,
      headlineSmall: TextStyles.headlineSmall,
      titleSmall: TextStyles.titleSmall,
      bodyMedium: TextStyles.bodyMedium,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      prefixIconColor: AppColors.primaryVariant,
      labelStyle: TextStyles.labelStyle,
      fillColor: AppColors.secondaryColor,
      hintStyle: TextStyles.inputStyle,
      errorStyle: TextStyles.errorStyle,
      helperStyle: TextStyles.helperStyle,
    ),
    extensions: <ThemeExtension<AppGradients>>[
      AppGradients(
          primaryGradient: LinearGradient(
            colors: <Color>[
              AppColors.surfaceGradientColor.withOpacity(0.1),
              AppColors.surfaceGradientSecondColor.withOpacity(0.1),
            ],
          ),
          buttonGradient: const LinearGradient(
            colors: <Color>[
              AppColors.surfaceGradientColor,
              AppColors.surfaceGradientSecondColor,
            ],
          ),),
    ],
  );
}
