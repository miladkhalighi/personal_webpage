import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_dimentions.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/components/app_text_styles.dart';

import '../../shared_widgets/custom_progress_bar.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: size.width < 600 ? smallScreenShow(size) : wideScreenShow(size),
      ),
    );
  }

  Widget wideScreenShow(Size size) {
    return Padding(
      padding: EdgeInsets.all(size.width*0.05),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.03,
          ),
          Expanded(child: contentSide(size)),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(child: skillSide(size)),
          SizedBox(
            width: size.width * 0.03,
          ),
        ],
      ),
    );
  }

  Widget smallScreenShow(Size size) {
    return Padding(
      padding: EdgeInsets.all(size.width * 0.1),
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.03,
          ),
          skillSide(size),
          SizedBox(
            width: size.width * 0.05,
          ),
          contentSide(size),
          SizedBox(
            width: size.width * 0.03,
          ),
        ],
      ),
    );
  }

  Column contentSide(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/graduation_hat.png',
                width: size.width * 0.2 + size.height * 0.1,
                //height: size.width * 0.2 + size.height * 0.1,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: AppDimentions.large,
              child: FadeInDown(
                child: Text.rich(TextSpan(text: "Working Since ", children: [
                  TextSpan(text: "2016", style: AppTextStyles.titleLarge)
                ])),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        FadeInDown(
            delay: const Duration(milliseconds: 500),
            child: Text(AppStrings.skillsContent)),
      ],
    );
  }

  Column skillSide(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Text(AppStrings.skillsSubTitle),
        SizedBox(
          height: size.height * 0.1,
        ),
        Text(
          AppStrings.skillsTitle,
          style: AppTextStyles.titleMedium,
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        const CustomProgressBar(title: 'Dart', progress: 0.9),
        SizedBox(height: AppDimentions.medium),
        const CustomProgressBar(title: 'Swift', progress: 0.7),
        SizedBox(height: AppDimentions.medium),
        const CustomProgressBar(title: 'C/C++', progress: 0.75),
        SizedBox(height: AppDimentions.medium),
        const CustomProgressBar(title: 'Java', progress: 0.65),
        SizedBox(height: AppDimentions.medium),
        const CustomProgressBar(title: 'Kotlin', progress: 0.55),
        SizedBox(height: AppDimentions.medium),
        const CustomProgressBar(title: 'Figma', progress: 0.7),
        SizedBox(height: AppDimentions.medium),
      ],
    );
  }
}
