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
}
