import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/view/home_screen/home_screen.dart';
import 'package:personal_webpage/view/projects_screen/projects_screen.dart';
import 'package:personal_webpage/view/root_navigator/root_navigator.dart';
import 'package:personal_webpage/view/services_screen/services_screen.dart';

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
      title: 'Personal Webpage',
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
      home: const ServicesScreen(),
    );
  }
}



