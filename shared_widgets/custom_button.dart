import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/controller/custom_button_controller.dart';

import '../components/app_colors.dart';
import '../components/app_dimentions.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Function() onPressed;
  const CustomButton({super.key, required this.title, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  final controller = Get.put(CustomButtonController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: widget.onPressed,
        onHover: (value) {
          controller.hovering = value ? true : false;
        },
        borderRadius: BorderRadius.circular(100),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: EdgeInsets.symmetric(
              horizontal: AppDimentions.medium * 2,
              vertical: AppDimentions.small),
          height: 48,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xff411D7D),
                  const Color(0xffD4ADFC).withOpacity(0.8),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    color: AppColors.onSecondary.withOpacity(0.5),
                    blurRadius: controller.hovering ? 0 : 2,
                    offset: Offset(controller.hovering ? 0 : 5, controller.hovering ? 0 : 4),
                    blurStyle: BlurStyle.solid)
              ],
              borderRadius: BorderRadius.circular(100)),
          child: Center(
              child: Text(
                        widget.title,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
        ),
      ),
    );
  }
}
