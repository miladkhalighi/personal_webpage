import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Webpage',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.onPrimary),
        scaffoldBackgroundColor: AppColors.onPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          headlineLarge: TextStyle()
        )
      ),
      home: const HomeScreen(),
    );
  }
}



