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
    return Wrap(
      spacing: AppDimentions.medium,
      runSpacing: AppDimentions.medium,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(AppStrings.socialsText),
        CustomIconButton(
          iconPath: 'assets/images/github.svg',
          onTap: () {
            controller.launchGithub();
          },
        ),
        CustomIconButton(
          iconPath: 'assets/images/instagram.svg',
          onTap: () {
            controller.launchInstagram();
          },
        ),
        CustomIconButton(
          iconPath: 'assets/images/linkedin.svg',
          onTap: () {
            controller.launchLinkedin();
          },
        ),
      ],
    );
  }
}
