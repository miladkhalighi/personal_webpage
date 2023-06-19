import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_webpage/components/app_colors.dart';
import 'package:personal_webpage/components/app_dimentions.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/components/app_text_styles.dart';
import 'package:personal_webpage/view/services_screen/service_card.dart';

import '../../model/service.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            AppStrings.servicesTitle,
            style: AppTextStyles.bodyMedium,
            textAlign: TextAlign.center,
          ),
                    SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            AppStrings.servicesSubTitle,
            style: AppTextStyles.titleMedium.copyWith(color: AppColors.onSecondary),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(AppDimentions.large),
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: size.width*0.1),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: size.width<600 ? 1 : size.width<700 ? 2 : size.width<900 ? 3 : 4,
                      childAspectRatio: size.width<600 ? 1 : 1/1.6
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(AppDimentions.small),
                      child: ZoomIn(
                        child: ServiceCard(
                          service: myServices[index],
                          onTap: () {},
                        ),
                      ),
                    );
                  },
                  itemCount: myServices.length,
                )),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}


