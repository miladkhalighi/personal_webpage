import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/app_colors.dart';
import '../components/app_dimentions.dart';

class CustomIconButton extends StatelessWidget {
  final String iconPath;
  final Function() onTap;
  const CustomIconButton({
    super.key,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //borderRadius: BorderRadius.circular(50),
      splashColor: AppColors.onSecondary,
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(AppDimentions.small),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
            fit: BoxFit.cover,
          )),
    );
  }
}
