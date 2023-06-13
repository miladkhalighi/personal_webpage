import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_webpage/components/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle appBarSelectedItemNavigation = TextStyle(
      fontFamily: GoogleFonts.inknutAntiqua().fontFamily,
      color: AppColors.appBarItemNavigationTextSelectedColor,
      fontSize: 16);
  static TextStyle appBarUnSelectedItemNavigation = TextStyle(
      fontFamily: GoogleFonts.inknutAntiqua().fontFamily,
      color: AppColors.appBarItemNavigationTextUnSelectedColor,
      fontSize: 16);

  static TextStyle titleMedium = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.headerMediumColor,
    fontSize: 28,
  );
    static TextStyle titleSmall = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.headerMediumColor,
    fontSize: 22,
  );
  static TextStyle titleLarge = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.onSecondary,
    fontSize: 48,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textPrimary,
    fontSize: 20,
  );
    static TextStyle bodyMedium = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textPrimary.withOpacity(0.9),
    fontSize: 16,
    fontWeight: FontWeight.w300
  );
}
