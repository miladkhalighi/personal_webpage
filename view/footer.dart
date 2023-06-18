import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height/2,
        color: AppColors.onSecondary,
      ),
    );
  }
}



