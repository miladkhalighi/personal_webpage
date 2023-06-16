import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_webpage/components/app_strings.dart';
import 'package:personal_webpage/controller/service_card_controller.dart';

import '../../components/app_colors.dart';
import '../../components/app_dimentions.dart';
import '../../components/app_text_styles.dart';
import '../../model/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final Function() onTap;
  //final bool hovering;
  const ServiceCard({
    super.key,
    required this.service,
    required this.onTap,
    //this.hovering = false,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var controller =
        Get.put(ServiceCardController(), tag: UniqueKey().toString());
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var parentHeight = constraints.maxHeight;
        return Obx(
          () => InkWell(
            onTap: onTap,
            onHover: (value) => controller.hovering = value,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.onPrimary,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.primary, width: 3),
                      boxShadow: [
                        BoxShadow(color: AppColors.onPrimary, blurRadius: 4)
                      ]),
                )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: controller.hovering ? parentHeight : 0,
                    decoration: BoxDecoration(
                        //color: AppColors.secondary,
                        gradient: controller.hovering
                            ? LinearGradient(
                                colors: [
                                  AppColors.onPrimary,
                                  AppColors.secondary,
                                  AppColors.onSecondary,
                                ],
                                end: Alignment.bottomRight,
                                begin: Alignment.topLeft,
                              )
                            : null,
                        borderRadius: BorderRadius.circular(16),
                        border:
                            Border.all(color: AppColors.secondary, width: 3),
                        boxShadow: [
                          BoxShadow(color: AppColors.secondary, blurRadius: 4)
                        ]),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.all(AppDimentions.large),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        controller.hovering
                            ? const SizedBox.shrink()
                            : SvgPicture.asset(
                                service.imgPath,
                                width: double.maxFinite,
                                height: size.height * 0.15,
                              ),
                        SizedBox(
                          height: controller.hovering ? 0 : size.height * 0.03,
                        ),
                        Text(
                          service.name,
                          style: AppTextStyles.titleSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: controller.hovering
                              ? size.height * 0.02
                              : size.height * 0.04,
                        ),
                        Expanded(
                          child: Text(
                            service.description,
                            style: AppTextStyles.bodyMedium,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 20,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: AppDimentions.medium,
                    bottom: AppDimentions.medium,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 0),
                        opacity: controller.hovering ? 1 : 0,
                        child: TextButton(
                            onPressed: onTap,
                            child: Text(
                              AppStrings.readMore,
                              style: AppTextStyles.textButton,
                            ))))
              ],
            ),
          ),
        );
      },
    );
  }
}
