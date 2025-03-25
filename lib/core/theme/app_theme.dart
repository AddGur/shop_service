import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/app_colors.dart';

enum AppThemeEnum { light, dark }

class AppTheme {
  static ThemeData getTheme(AppThemeEnum themeEnum) {
    switch (themeEnum) {
      case AppThemeEnum.light:
        return lightTheme();
      case AppThemeEnum.dark:
        return darkTheme();
    }
  }

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.lightPrimary,
      scaffoldBackgroundColor:
          AppColors.lightBackground, // Tło dla całego scaffold
      colorScheme: ColorScheme.light(
        primary: AppColors.lightPrimary,
        secondary: AppColors.lightAccent, // Zastępuje accentColor
      ),
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
        bodyLarge: TextStyle(color: AppColors.lightText), // Zamiast bodyText1
        bodyMedium: TextStyle(color: AppColors.lightText), // Zamiast bodyText2
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightPrimary,
        titleTextStyle:
            GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryButton,
      ),
      cardColor: AppColors.lightCard,
    );
  }

  // Motyw Dark
  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.darkPrimary,
      scaffoldBackgroundColor:
          AppColors.darkBackground, // Tło dla całego scaffold
      colorScheme: ColorScheme.dark(
        primary: AppColors.darkPrimary,
        secondary: AppColors.darkAccent, // Zastępuje accentColor
      ),
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
        bodyLarge: TextStyle(color: AppColors.darkText), // Zamiast bodyText1
        bodyMedium: TextStyle(color: AppColors.darkText), // Zamiast bodyText2
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkPrimary,
        titleTextStyle:
            GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryButton,
      ),
      cardColor: AppColors.darkCard,
    );
  }
}
