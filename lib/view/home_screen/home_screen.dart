import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/components/app_text_styles.dart';
import 'package:personal_webpage/shared_widgets/social_buttons.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: size.width < 650 ? smallScreenShow(size) : wideScreenShow(size),
    );
  }

  Widget wideScreenShow(Size size) {
    var bodyMargin = size.width * 0.05;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:bodyMargin),
      child: Row(
        children: [
          Expanded(child: contentSide()),
          Expanded(
            child: ZoomIn(
            child: Image.asset(
              'assets/images/profile_img.png',
              fit: BoxFit.contain,
            ),
                    )),
        ],
      ),
    );
  }

  Widget smallScreenShow(Size size) {
    var bodyMargin = size.width * 0.1;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(bodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            headerTexts(),
            ZoomIn(
              child: Image.asset(
                'assets/images/profile_img.png',
                fit: BoxFit.cover,
              ),
            ),
            FadeInDown(
                delay: const Duration(milliseconds: 400),
                child: Text(AppStrings.introduceMyself)),
            SizedBox(
              height: size.height * 0.1,
            ),
            FadeInLeftBig(
                delay: const Duration(milliseconds: 800),
                child: const SocialButtons()),
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
        headerTexts(),
        FadeInDown(
            delay: const Duration(milliseconds: 400),
            child: Text(AppStrings.introduceMyself)),
        FadeInLeftBig(
            delay: const Duration(milliseconds: 800),
            child: const SocialButtons()),
      ],
    );
  }

  FadeInDown headerTexts() {
    return FadeInDown(
      delay: const Duration(milliseconds: 200),
      child: RichText(
        text: TextSpan(
            text: 'Hello, ',
            style: AppTextStyles.bodyLarge,
            children: [
              TextSpan(
                  text: 'I’m',
                  style: AppTextStyles.bodyLarge
                      .copyWith(color: AppColors.onSecondary)),
              TextSpan(
                  text: '\nMilad Khalighi', style: AppTextStyles.titleLarge),
              TextSpan(
                  text: '\nMobile | Software | Web developer',
                  style: AppTextStyles.titleMedium),
            ]),
      ),
    );
  }
}
