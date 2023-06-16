import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/controller/url_launcher_controller.dart';

import '../components/app_dimentions.dart';
import '../components/app_strings.dart';
import 'custom_icon_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UrlLauncherController());
    return Row(
      children: [
        Text(AppStrings.socialsText),
        SizedBox(
          width: AppDimentions.large,
        ),
        CustomIconButton(
          iconPath: 'assets/images/github.svg',
          onTap: () {
            controller.launchGithub();
          },
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
        CustomIconButton(
          iconPath: 'assets/images/instagram.svg',
          onTap: () {
            controller.launchInstagram();
          },
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
        CustomIconButton(
          iconPath: 'assets/images/linkedin.svg',
          onTap: () {
            controller.launchLinkedin();
          },
        ),
        SizedBox(
          width: AppDimentions.medium,
        ),
      ],
    );
  }
}
