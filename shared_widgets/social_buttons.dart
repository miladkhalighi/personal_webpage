import 'package:flutter/material.dart';

import '../components/app_dimentions.dart';
import '../components/app_strings.dart';
import 'custom_icon_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppStrings.socialsText),
        SizedBox(
          width: AppDimentions.large,
        ),
        CustomIconButton(
          iconPath: 'assets/images/github.svg',
          onTap: () {},
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
        CustomIconButton(
          iconPath: 'assets/images/instagram.svg',
          onTap: () {},
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
        CustomIconButton(
          iconPath: 'assets/images/linkedin.svg',
          onTap: () {},
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
      ],
    );
  }
}