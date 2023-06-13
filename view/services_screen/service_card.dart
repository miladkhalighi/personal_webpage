import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/app_colors.dart';
import '../../components/app_dimentions.dart';
import '../../components/app_text_styles.dart';
import '../../model/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final Function() onTap;
  final bool hovering;
  const ServiceCard(
      {super.key,
      required this.service,
      required this.onTap,
      this.hovering = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppDimentions.medium),
        decoration: BoxDecoration(
            color: AppColors.onPrimary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primary, width: 3),
            boxShadow: [BoxShadow(color: AppColors.onPrimary, blurRadius: 4)]),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppDimentions.small),
              SvgPicture.asset(
                service.imgPath,
                width: double.maxFinite,
                height: size.height * 0.15,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Text(
                service.name,
                style: AppTextStyles.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                service.content,
                style: AppTextStyles.bodyMedium,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}