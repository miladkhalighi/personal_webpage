import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/controller/custom_icon_button_controller.dart';

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
    var controller = Get.put(CustomIconButtonController(),tag: UniqueKey().toString());
    return Obx(
      ()=> InkWell(
        splashColor: AppColors.onSecondary,
        highlightColor: AppColors.onSecondary,
        onTap: onTap,
        onHover: (value) => controller.hovering = value,
        child: Container(
            padding: EdgeInsets.all(AppDimentions.small),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: controller.hovering ? AppColors.onSecondary : Colors.white,
            ),
            child: controller.hovering ? ZoomIn(
              child: SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),
            ): SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                fit: BoxFit.cover,
              ),),
      ),
    );
  }
}
