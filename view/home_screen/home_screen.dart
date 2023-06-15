import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_dimentions.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/components/app_text_styles.dart';
import 'package:personal_webpage/shared_widgets/social_buttons.dart';
import 'package:personal_webpage/view/root_navigator/item_navigation_bar.dart';

import '../../shared_widgets/custom_appbar.dart';
import '../../shared_widgets/custom_button.dart';
import '../../shared_widgets/custom_icon_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var bodyMargin = size.width * 0.04;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: bodyMargin, vertical: bodyMargin / 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: contentSide()),
                  Expanded(
                      child: ZoomIn(
                        child: Image.asset(
                          'assets/images/profile_img.png',
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column contentSide() {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInDown(
                          delay: const Duration(milliseconds: 200),
                          child: RichText(
                            text: TextSpan(
                                text: 'Hello, ',
                                style: AppTextStyles.bodyLarge,
                                children: [
                                  TextSpan(
                                      text: 'I’m',
                                      style: AppTextStyles.bodyLarge.copyWith(color: AppColors.onSecondary)),
                                  TextSpan(
                                      text: '\nMilad Khalighi',
                                      style: AppTextStyles.titleLarge),
                                  TextSpan(
                                      text:
                                          '\nMobile | Software | Web developer',
                                      style: AppTextStyles.titleMedium),
                                ]),
                          ),
                        ),

                        FadeInDown(
                          delay: const Duration(milliseconds: 400),
                          child: Text(AppStrings.introduceMyself)),
                        FadeInLeftBig(delay: const Duration(milliseconds: 800),child: const SocialButtons()),
                      ],
                    );
  }
}
