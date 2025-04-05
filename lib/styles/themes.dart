import 'package:flutter/material.dart';
import 'package:foodie_app/styles/styles.dart';

class Themes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.primaryVariant,
      secondary: AppColors.secondaryColor,
      secondaryFixed: AppColors.secondaryNext,
      secondaryFixedDim: AppColors.secondaryFixedDim,
      secondaryContainer: AppColors.secondaryContainer,
      onSecondary: AppColors.secondaryVariant,
      error: AppColors.errorColor,
      onError: AppColors.errorColor,
      surface: AppColors.surfaceGradientColor,
      onSurface: AppColors.surfaceGradientSecondColor,
      scrim: AppColors.scrim,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColor,
    dividerColor: AppColors.secondaryVariant,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      displayMedium: TextStyles.displayMedium,
      headlineLarge: TextStyles.headlineLarge,
      headlineMedium: TextStyles.headlineMedium,
      headlineSmall: TextStyles.headlineSmall,
      titleMedium: TextStyles.titleMedium,
      titleSmall: TextStyles.titleSmall,
      bodyLarge: TextStyles.bodyLarge,
      bodyMedium: TextStyles.bodyMedium,
      bodySmall: TextStyles.bodySmall,
      labelMedium: TextStyles.labelMedium,
      labelSmall: TextStyles.labelSmall,
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
        ),
        backgroundGradient: LinearGradient(
          colors: <Color>[
            AppColors.primaryColor.withOpacity(0.2),
            AppColors.primaryColor.withOpacity(0.05),
          ],
        ),
      ),
    ],
  );
}
