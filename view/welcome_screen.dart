import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/view/root_navigator/root_navigator.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late Timer timer;
  @override
  void initState() {
    timer = Timer(const Duration(seconds: 3), () {
      Get.off(const RootNavigator());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("WELCOME"),
      ),
    );
  }
}
