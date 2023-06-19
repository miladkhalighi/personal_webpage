import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/view/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primary),
        scaffoldBackgroundColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.jua(fontSize: 64,color: AppColors.onSecondary),
          headlineMedium: GoogleFonts.jua(fontSize: 36,color: AppColors.headerMediumColor),
          bodyLarge: GoogleFonts.jetBrainsMono(fontSize: 20,color: AppColors.textPrimary),
          bodyMedium: GoogleFonts.jetBrainsMono(fontSize: 16,color: AppColors.textPrimary.withOpacity(0.9),fontWeight: FontWeight.w300,),
        )
      ),
      home: const WelcomeScreen(),
    );
  }
}



