import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            style: AppTextStyles.titleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            AppStrings.servicesSubTitle,
            style: AppTextStyles.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(AppDimentions.large),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: myServices.length,
                      childAspectRatio: 1 / 1.7),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(AppDimentions.small),
                      child: ServiceCard(
                        service: myServices[index],
                        onTap: () {},
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


