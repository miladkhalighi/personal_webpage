import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_webpage/components/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle appBarSelectedItemNavigation = TextStyle(
      fontFamily: GoogleFonts.orbitron().fontFamily,
      color: AppColors.appBarItemNavigationTextSelectedColor,
      fontSize: 14);
  static TextStyle appBarUnSelectedItemNavigation = TextStyle(
      fontFamily: GoogleFonts.orbitron().fontFamily,
      color: AppColors.appBarItemNavigationTextUnSelectedColor,
      fontSize: 14);

  static TextStyle titleMedium = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.headerMediumColor,
    fontSize: 26,
  );
    static TextStyle titleSmall = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.headerMediumColor,
    fontSize: 20,
  );
  static TextStyle titleLarge = TextStyle(
    fontFamily: GoogleFonts.jua().fontFamily,
    color: AppColors.onSecondary,
    fontSize: 48,
  );

  static TextStyle bodyLarge = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textPrimary,
    fontSize: 16,
  );
    static TextStyle bodyMedium = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textPrimary.withOpacity(0.9),
    fontSize: 14,
    fontWeight: FontWeight.w300
  );

      static TextStyle bodySmall = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textPrimary.withOpacity(0.9),
    fontSize: 12,
    fontWeight: FontWeight.w300
  );

    static TextStyle textButton = TextStyle(
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    color: AppColors.textButtonColor,
    fontSize: 14,
    //fontWeight: FontWeight.bold
  );
}
